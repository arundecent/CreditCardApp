package org.groovy.creditcard



import org.junit.*
import grails.test.mixin.*

@TestFor(CustomerBankController)
@Mock(CustomerBank)
class CustomerBankControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/customerBank/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.customerBankInstanceList.size() == 0
        assert model.customerBankInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.customerBankInstance != null
    }

    void testSave() {
        controller.save()

        assert model.customerBankInstance != null
        assert view == '/customerBank/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/customerBank/show/1'
        assert controller.flash.message != null
        assert CustomerBank.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/customerBank/list'

        populateValidParams(params)
        def customerBank = new CustomerBank(params)

        assert customerBank.save() != null

        params.id = customerBank.id

        def model = controller.show()

        assert model.customerBankInstance == customerBank
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/customerBank/list'

        populateValidParams(params)
        def customerBank = new CustomerBank(params)

        assert customerBank.save() != null

        params.id = customerBank.id

        def model = controller.edit()

        assert model.customerBankInstance == customerBank
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/customerBank/list'

        response.reset()

        populateValidParams(params)
        def customerBank = new CustomerBank(params)

        assert customerBank.save() != null

        // test invalid parameters in update
        params.id = customerBank.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/customerBank/edit"
        assert model.customerBankInstance != null

        customerBank.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/customerBank/show/$customerBank.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        customerBank.clearErrors()

        populateValidParams(params)
        params.id = customerBank.id
        params.version = -1
        controller.update()

        assert view == "/customerBank/edit"
        assert model.customerBankInstance != null
        assert model.customerBankInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/customerBank/list'

        response.reset()

        populateValidParams(params)
        def customerBank = new CustomerBank(params)

        assert customerBank.save() != null
        assert CustomerBank.count() == 1

        params.id = customerBank.id

        controller.delete()

        assert CustomerBank.count() == 0
        assert CustomerBank.get(customerBank.id) == null
        assert response.redirectedUrl == '/customerBank/list'
    }
}
