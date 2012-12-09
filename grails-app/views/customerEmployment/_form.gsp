<%@ page import="org.groovy.creditcard.CustomerEmployment" %>



<div class="fieldcontain ${hasErrors(bean: customerEmploymentInstance, field: 'annualIncome', 'error')} required">
	<label for="annualIncome">
		<g:message code="customerEmployment.annualIncome.label" default="Annual Income" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="annualIncome" type="number" value="${customerEmploymentInstance?.annualIncome}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: customerEmploymentInstance, field: 'residentialStatus', 'error')} ">
	<label for="residentialStatus">
		<g:message code="customerEmployment.residentialStatus.label" default="Residential Status" />
		
	</label>
	<g:select name="residentialStatus" from="${customerEmploymentInstance?.constraints?.residentialStatus?.inList}" value="${customerEmploymentInstance?.residentialStatus}" valueMessagePrefix="customerEmployment.residentialStatus" noSelection="['': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: customerEmploymentInstance, field: 'monthlyMortgageRent', 'error')} required">
	<label for="monthlyMortgageRent">
		<g:message code="customerEmployment.monthlyMortgageRent.label" default="Monthly Mortgage Rent" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="monthlyMortgageRent" type="number" value="${customerEmploymentInstance?.monthlyMortgageRent}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: customerEmploymentInstance, field: 'otherAnnualIncome', 'error')} required">
	<label for="otherAnnualIncome">
		<g:message code="customerEmployment.otherAnnualIncome.label" default="Other Annual Income" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="otherAnnualIncome" type="number" value="${customerEmploymentInstance?.otherAnnualIncome}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: customerEmploymentInstance, field: 'workPhone', 'error')} ">
	<label for="workPhone">
		<g:message code="customerEmployment.workPhone.label" default="Work Phone" />
		
	</label>
	<g:textField name="workPhone" value="${customerEmploymentInstance?.workPhone}"/>
</div>

<div class="fieldcontain">
	<label for="savingsAcc">
		<g:message default="Customer ID" />
	</label>
	<g:field name="customer_id" value="${ customerEmploymentInstance?.customer_id}" readonly=""/>
</div>

