package org.groovy.creditcard



import org.junit.*
import grails.test.mixin.*

@TestFor(CustomerEmploymentController)
@Mock(CustomerEmployment)
class CustomerEmploymentControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/customerEmployment/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.customerEmploymentInstanceList.size() == 0
        assert model.customerEmploymentInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.customerEmploymentInstance != null
    }

    void testSave() {
        controller.save()

        assert model.customerEmploymentInstance != null
        assert view == '/customerEmployment/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/customerEmployment/show/1'
        assert controller.flash.message != null
        assert CustomerEmployment.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/customerEmployment/list'

        populateValidParams(params)
        def customerEmployment = new CustomerEmployment(params)

        assert customerEmployment.save() != null

        params.id = customerEmployment.id

        def model = controller.show()

        assert model.customerEmploymentInstance == customerEmployment
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/customerEmployment/list'

        populateValidParams(params)
        def customerEmployment = new CustomerEmployment(params)

        assert customerEmployment.save() != null

        params.id = customerEmployment.id

        def model = controller.edit()

        assert model.customerEmploymentInstance == customerEmployment
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/customerEmployment/list'

        response.reset()

        populateValidParams(params)
        def customerEmployment = new CustomerEmployment(params)

        assert customerEmployment.save() != null

        // test invalid parameters in update
        params.id = customerEmployment.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/customerEmployment/edit"
        assert model.customerEmploymentInstance != null

        customerEmployment.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/customerEmployment/show/$customerEmployment.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        customerEmployment.clearErrors()

        populateValidParams(params)
        params.id = customerEmployment.id
        params.version = -1
        controller.update()

        assert view == "/customerEmployment/edit"
        assert model.customerEmploymentInstance != null
        assert model.customerEmploymentInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/customerEmployment/list'

        response.reset()

        populateValidParams(params)
        def customerEmployment = new CustomerEmployment(params)

        assert customerEmployment.save() != null
        assert CustomerEmployment.count() == 1

        params.id = customerEmployment.id

        controller.delete()

        assert CustomerEmployment.count() == 0
        assert CustomerEmployment.get(customerEmployment.id) == null
        assert response.redirectedUrl == '/customerEmployment/list'
    }
}
