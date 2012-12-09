package org.groovy.creditcard

import org.java.creditcard.DroolsClass
import org.springframework.dao.DataIntegrityViolationException
import grails.converters.*
import org.codehaus.groovy.grails.web.json.*;

class CustomerController {

	static allowedMethods = [save: "POST", update: "POST", delete: "POST"]
	
	static scaffolding = true

	def index() {
		redirect(action: "list", params: params)
	}

	def list(Integer max) {
		params.max = Math.min(max ?: 10, 100)
		[customerInstanceList: Customer.list(params), customerInstanceTotal: Customer.count()]
	}

	def create() {
		print 'params list..'
		[customerInstance: new Customer(params)]
	}

	def save() {
		def customerInstance = new Customer(params)
		System.out.println(params.customerInstance);
		if (!customerInstance.save(flush: true)) {
			render(view: "create", model: [customerInstance: customerInstance])
			return
		}
		flash.message = message(code: 'default.created.message', args: [message(code: 'customer.label', default: 'Customer'), customerInstance.id])
		redirect(action: "create", controller:"CustomerBank", id: customerInstance.id)
		
	}
	
	def getCreditRatingWS(inputSSN){
		withRest(uri: "http://192.168.1.24:8080") {
			   def html = get(path : '/SSNWS-0.1/getSSNRating/'+inputSSN)
			   def responseMap = JSON.parse(html.getData().toString());
			   System.out.println(responseMap["creditRating"]);
		}
	}

	def show(Long id) {
		println(id)
		def customerInstance = Customer.get(id)
		if (!customerInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'customer.label', default: 'Customer'), id])
			redirect(action: "list")
			return
		}

		[customerInstance: customerInstance]
	}

	def edit(Long id) {
		def customerInstance = Customer.get(id)
		if (!customerInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'customer.label', default: 'Customer'), id])
			redirect(action: "list")
			return
		}

		[customerInstance: customerInstance]
	}

	def update(Long id, Long version) {
		def customerInstance = Customer.get(id)
		if (!customerInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'customer.label', default: 'Customer'), id])
			redirect(action: "list")
			return
		}

		if (version != null) {
			if (customerInstance.version > version) {
				customerInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
						  [message(code: 'customer.label', default: 'Customer')] as Object[],
						  "Another user has updated this Customer while you were editing")
				render(view: "edit", model: [customerInstance: customerInstance])
				return
			}
		}

		customerInstance.properties = params

		if (!customerInstance.save(flush: true)) {
			render(view: "edit", model: [customerInstance: customerInstance])
			return
		}

		flash.message = message(code: 'default.updated.message', args: [message(code: 'customer.label', default: 'Customer'), customerInstance.id])
		redirect(action: "show", id: customerInstance.id)
	}

	def delete(Long id) {
		def customerInstance = Customer.get(id)
		if (!customerInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'customer.label', default: 'Customer'), id])
			redirect(action: "list")
			return
		}

		try {
			customerInstance.delete(flush: true)
			flash.message = message(code: 'default.deleted.message', args: [message(code: 'customer.label', default: 'Customer'), id])
			redirect(action: "list")
		}
		catch (DataIntegrityViolationException e) {
			flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'customer.label', default: 'Customer'), id])
			redirect(action: "show", id: id)
		}
	}
	
	def apply = {
		DroolsClass d1 = new DroolsClass();
		System.out.println("Entering Drools Logic" +params)
		def appID = params['id']
		
		def creditRating = getCreditRatingWS(params["ssn"])
		
		def appRecord = Customer.get(appID)
		System.out.println(appRecord.ssn);
		appRecord["creditRating"] = creditRating
		d1.droolsInit(appRecord);
		
		redirect(uri:'/customer/show/'+appID)
	}
	
	def customerhome = {
		if(session.usertype == 'banker')
		{
			//def cb = Results.countByCardTypeID()
			def criteria = Results.createCriteria()
			def criteria1 = Results.createCriteria()
			def criteria2 = Results.createCriteria()
			def criteria3 = Results.createCriteria()
			
			def distinctCardType = criteria.list {
				projections {
					distinct 'cardTypeID'
					cache(true)
				}
			}
			
			
			 def distinctCardAcceptance = criteria1.list{
				projections {
						distinct 'isAccept'
						cache(true)
					}
			}
			
			def distinctApprover = criteria2.list{
				projections {
						distinct 'approverID'
						cache(true)
					}
			}
			
			def distinctOverrider = criteria3.list{
				projections {
						distinct 'manualOverRide'
						cache(true)
					}
			}
			//System.out.println("countByOverrider : "+countByCardType)
			def countByCardType = [:]
			for(def item in distinctCardType)
			{
				def cb = Results.countByCardTypeID(item,[cache: true])
				countByCardType.put(item,cb)
			}
			
			def countCardAcceptance = [:]
			for(def item in distinctCardAcceptance)
			{
				def cb = Results.countByIsAccept(item,[cache: true])
				countCardAcceptance.put(item,cb)
			}
			
			def countByApproverID = [:]
			for(def item in distinctApprover)
			{
				def cb = Results.countByApproverID(item,[cache: true])
				countByApproverID.put(item,cb)
			}
			
			def countByOverride = [:]
			for(def item in distinctOverrider)
			{
				def cb = Results.countByManualOverRide(item,[cache: true])
				countByOverride.put(item,cb)
			}
			
			System.out.println("countByApproverID:"+countByApproverID);
			System.out.println("countByCardType:"+countByCardType);
			System.out.println("countByOverride:"+countByOverride);
			System.out.println("countCardAcceptance:"+countCardAcceptance);
			
			["countByApproverID":countByApproverID,"countByCardType":countByCardType,"countByOverride":countByOverride,"countCardAcceptance":countCardAcceptance]
			
		}
		
	}
}
