<%@ page import="org.groovy.creditcard.Customer" %>



<div class="fieldcontain ${hasErrors(bean: customerInstance, field: 'accountNumber', 'error')} required">
	<label for="accountNumber">
		<g:message code="customer.accountNumber.label" default="Account Number" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="accountNumber" type="number" value="${customerInstance.accountNumber}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: customerInstance, field: 'emailID', 'error')} required">
	<label for="emailID">
		<g:message code="customer.emailID.label" default="Email ID" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="email" name="emailID" required="" value="${customerInstance?.emailID}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: customerInstance, field: 'firstName', 'error')} required">
	<label for="firstName">
		<g:message code="customer.firstName.label" default="First Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="firstName" required="" value="${customerInstance?.firstName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: customerInstance, field: 'lastName', 'error')} required">
	<label for="lastName">
		<g:message code="customer.lastName.label" default="Last Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="lastName" required="" value="${customerInstance?.lastName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: customerInstance, field: 'street', 'error')} required">
	<label for="street">
		<g:message code="customer.street.label" default="Street" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="street" required="" value="${customerInstance?.street}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: customerInstance, field: 'apt', 'error')} required">
	<label for="apt">
		<g:message code="customer.apt.label" default="Apt" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="apt" required="" value="${customerInstance?.apt}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: customerInstance, field: 'city', 'error')} required">
	<label for="city">
		<g:message code="customer.city.label" default="City" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="city" required="" value="${customerInstance?.city}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: customerInstance, field: 'state', 'error')} required">
	<label for="state">
		<g:message code="customer.state.label" default="State" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="state" required="" value="${customerInstance?.state}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: customerInstance, field: 'zip', 'error')} required">
	<label for="zip">
		<g:message code="customer.zip.label" default="Zip" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="zip" type="number" value="${customerInstance.zip}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: customerInstance, field: 'phone', 'error')} required">
	<label for="phone">
		<g:message code="customer.phone.label" default="Phone" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="phone" type="number" value="${customerInstance.phone}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: customerInstance, field: 'dob', 'error')} required">
	<label for="dob">
		<g:message code="customer.dob.label" default="Dob" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="dob" precision="day"  value="${customerInstance?.dob}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: customerInstance, field: 'ssn', 'error')} required">
	<label for="ssn">
		<g:message code="customer.ssn.label" default="Ssn" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="ssn" type="number" value="${customerInstance.ssn}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: customerInstance, field: 'applicationDate', 'error')} required">
	<label for="applicationDate">
		<g:message code="customer.applicationDate.label" default="Application Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="applicationDate" precision="day"  value="${customerInstance?.applicationDate}"  />
</div>

