package org.groovy.creditcard

import org.springframework.dao.DataIntegrityViolationException

class CustomerBankController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [customerBankInstanceList: CustomerBank.list(params), customerBankInstanceTotal: CustomerBank.count()]
    }

    def create() {
		System.out.println("params id - "+params["id"]);
		def cbi = new CustomerBank(params)
		cbi["customer_id"] = params.int("id")
        [customerBankInstance: cbi]
    }

    def save() {
        def customerBankInstance = new CustomerBank(params)
		System.out.println("params id - "+params);
        if (!customerBankInstance.save(flush: true)) {
            render(view: "create", model: [customerBankInstance: customerBankInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'customerBank.label', default: 'CustomerBank'), customerBankInstance.id])
        redirect(action: "create", controller:"CustomerEmployment", id: customerBankInstance.customer_id)
    }

    def show(Long id) {
        def customerBankInstance = CustomerBank.get(id)
        if (!customerBankInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'customerBank.label', default: 'CustomerBank'), id])
            redirect(action: "list")
            return
        }

        [customerBankInstance: customerBankInstance]
    }

    def edit(Long id) {
        def customerBankInstance = CustomerBank.get(id)
        if (!customerBankInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'customerBank.label', default: 'CustomerBank'), id])
            redirect(action: "list")
            return
        }

        [customerBankInstance: customerBankInstance]
    }

    def update(Long id, Long version) {
        def customerBankInstance = CustomerBank.get(id)
        if (!customerBankInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'customerBank.label', default: 'CustomerBank'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (customerBankInstance.version > version) {
                customerBankInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'customerBank.label', default: 'CustomerBank')] as Object[],
                          "Another user has updated this CustomerBank while you were editing")
                render(view: "edit", model: [customerBankInstance: customerBankInstance])
                return
            }
        }

        customerBankInstance.properties = params

        if (!customerBankInstance.save(flush: true)) {
            render(view: "edit", model: [customerBankInstance: customerBankInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'customerBank.label', default: 'CustomerBank'), customerBankInstance.id])
        redirect(action: "show", id: customerBankInstance.id)
    }

    def delete(Long id) {
        def customerBankInstance = CustomerBank.get(id)
        if (!customerBankInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'customerBank.label', default: 'CustomerBank'), id])
            redirect(action: "list")
            return
        }

        try {
            customerBankInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'customerBank.label', default: 'CustomerBank'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'customerBank.label', default: 'CustomerBank'), id])
            redirect(action: "show", id: id)
        }
    }
}
