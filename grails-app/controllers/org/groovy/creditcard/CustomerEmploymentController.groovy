package org.groovy.creditcard

import org.springframework.dao.DataIntegrityViolationException

class CustomerEmploymentController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [customerEmploymentInstanceList: CustomerEmployment.list(params), customerEmploymentInstanceTotal: CustomerEmployment.count()]
    }

    def create() {
		def cbi = new CustomerEmployment(params)
		cbi["customer_id"] = params.int("id")
		[customerEmploymentInstance: cbi]
    }

    def save() {
        def customerEmploymentInstance = new CustomerEmployment(params)
        if (!customerEmploymentInstance.save(flush: true)) {
            render(view: "create", model: [customerEmploymentInstance: customerEmploymentInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'customerEmployment.label', default: 'CustomerEmployment'), customerEmploymentInstance.id])
        redirect(action: "show", id: customerEmploymentInstance.id)
    }

    def show(Long id) {
        def customerEmploymentInstance = CustomerEmployment.get(id)
        if (!customerEmploymentInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'customerEmployment.label', default: 'CustomerEmployment'), id])
            redirect(action: "list")
            return
        }

        [customerEmploymentInstance: customerEmploymentInstance]
    }

    def edit(Long id) {
        def customerEmploymentInstance = CustomerEmployment.get(id)
        if (!customerEmploymentInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'customerEmployment.label', default: 'CustomerEmployment'), id])
            redirect(action: "list")
            return
        }

        [customerEmploymentInstance: customerEmploymentInstance]
    }

    def update(Long id, Long version) {
        def customerEmploymentInstance = CustomerEmployment.get(id)
        if (!customerEmploymentInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'customerEmployment.label', default: 'CustomerEmployment'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (customerEmploymentInstance.version > version) {
                customerEmploymentInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'customerEmployment.label', default: 'CustomerEmployment')] as Object[],
                          "Another user has updated this CustomerEmployment while you were editing")
                render(view: "edit", model: [customerEmploymentInstance: customerEmploymentInstance])
                return
            }
        }

        customerEmploymentInstance.properties = params

        if (!customerEmploymentInstance.save(flush: true)) {
            render(view: "edit", model: [customerEmploymentInstance: customerEmploymentInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'customerEmployment.label', default: 'CustomerEmployment'), customerEmploymentInstance.id])
        redirect(action: "show", id: customerEmploymentInstance.id)
    }

    def delete(Long id) {
        def customerEmploymentInstance = CustomerEmployment.get(id)
        if (!customerEmploymentInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'customerEmployment.label', default: 'CustomerEmployment'), id])
            redirect(action: "list")
            return
        }

        try {
            customerEmploymentInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'customerEmployment.label', default: 'CustomerEmployment'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'customerEmployment.label', default: 'CustomerEmployment'), id])
            redirect(action: "show", id: id)
        }
    }
}
