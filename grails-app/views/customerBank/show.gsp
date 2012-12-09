
<%@ page import="org.groovy.creditcard.CustomerBank" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'customerBank.label', default: 'CustomerBank')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-customerBank" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
			</ul>
		</div>
		<div id="show-customerBank" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list customerBank">
			
				<g:if test="${customerBankInstance?.customer_id}">
				<li class="fieldcontain">
					<span id="customer_id-label" class="property-label"><g:message code="customerBank.customer_id.label" default="Customerid" /></span>
					
						<span class="property-value" aria-labelledby="customer_id-label"><g:fieldValue bean="${customerBankInstance}" field="customer_id"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${customerBankInstance?.bankAccountExists}">
				<li class="fieldcontain">
					<span id="bankAccountExists-label" class="property-label"><g:message code="customerBank.bankAccountExists.label" default="Bank Account Exists" /></span>
					
						<span class="property-value" aria-labelledby="bankAccountExists-label"><g:fieldValue bean="${customerBankInstance}" field="bankAccountExists"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${customerBankInstance?.checkingsAccount}">
				<li class="fieldcontain">
					<span id="checkingsAccount-label" class="property-label"><g:message code="customerBank.checkingsAccount.label" default="Checkings Account" /></span>
					
						<span class="property-value" aria-labelledby="checkingsAccount-label"><g:fieldValue bean="${customerBankInstance}" field="checkingsAccount"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${customerBankInstance?.savingsAcc}">
				<li class="fieldcontain">
					<span id="savingsAcc-label" class="property-label"><g:message code="customerBank.savingsAcc.label" default="Savings Acc" /></span>
					
						<span class="property-value" aria-labelledby="savingsAcc-label"><g:fieldValue bean="${customerBankInstance}" field="savingsAcc"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${customerBankInstance?.customer_bankcol}">
				<li class="fieldcontain">
					<span id="customer_bankcol-label" class="property-label"><g:message code="customerBank.customer_bankcol.label" default="Customerbankcol" /></span>
					
						<span class="property-value" aria-labelledby="customer_bankcol-label"><g:fieldValue bean="${customerBankInstance}" field="customer_bankcol"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${customerBankInstance?.id}" />
					<g:link class="edit" action="edit" id="${customerBankInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
