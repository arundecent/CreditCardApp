<%@ page import="org.groovy.creditcard.CustomerBank" %>





<div class="fieldcontain ${hasErrors(bean: customerBankInstance, field: 'checkingsAccount', 'error')} required">
	<label for="checkingsAccount">
		<g:message code="customerBank.checkingsAccount.label" default="Checkings Account" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="checkingsAccount" required="" value="${customerBankInstance?.checkingsAccount}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: customerBankInstance, field: 'savingsAcc', 'error')} required">
	<label for="savingsAcc">
		<g:message code="customerBank.savingsAcc.label" default="Savings Acc" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="savingsAcc" required="" value="${customerBankInstance?.savingsAcc}"/>
</div>

<div class="fieldcontain">
	<label for="savingsAcc">
		<g:message default="Customer ID" />
	</label>
	<g:field name="customer_id" value="${ customerBankInstance?.customer_id}" readonly=""/>
</div>

