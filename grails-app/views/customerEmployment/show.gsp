
<%@ page import="org.groovy.creditcard.CustomerEmployment" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'customerEmployment.label', default: 'CustomerEmployment')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-customerEmployment" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
			</ul>
		</div>
		<div id="show-customerEmployment" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list customerEmployment">
			
				<g:if test="${customerEmploymentInstance?.annualIncome}">
				<li class="fieldcontain">
					<span id="annualIncome-label" class="property-label"><g:message code="customerEmployment.annualIncome.label" default="Annual Income" /></span>
					
						<span class="property-value" aria-labelledby="annualIncome-label"><g:fieldValue bean="${customerEmploymentInstance}" field="annualIncome"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${customerEmploymentInstance?.customer_id}">
				<li class="fieldcontain">
					<span id="customer_id-label" class="property-label"><g:message code="customerEmployment.customer_id.label" default="Customerid" /></span>
					
						<span class="property-value" aria-labelledby="customer_id-label"><g:fieldValue bean="${customerEmploymentInstance}" field="customer_id"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${customerEmploymentInstance?.residentialStatus}">
				<li class="fieldcontain">
					<span id="residentialStatus-label" class="property-label"><g:message code="customerEmployment.residentialStatus.label" default="Residential Status" /></span>
					
						<span class="property-value" aria-labelledby="residentialStatus-label"><g:fieldValue bean="${customerEmploymentInstance}" field="residentialStatus"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${customerEmploymentInstance?.monthlyMortgageRent}">
				<li class="fieldcontain">
					<span id="monthlyMortgageRent-label" class="property-label"><g:message code="customerEmployment.monthlyMortgageRent.label" default="Monthly Mortgage Rent" /></span>
					
						<span class="property-value" aria-labelledby="monthlyMortgageRent-label"><g:fieldValue bean="${customerEmploymentInstance}" field="monthlyMortgageRent"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${customerEmploymentInstance?.otherAnnualIncome}">
				<li class="fieldcontain">
					<span id="otherAnnualIncome-label" class="property-label"><g:message code="customerEmployment.otherAnnualIncome.label" default="Other Annual Income" /></span>
					
						<span class="property-value" aria-labelledby="otherAnnualIncome-label"><g:fieldValue bean="${customerEmploymentInstance}" field="otherAnnualIncome"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${customerEmploymentInstance?.workPhone}">
				<li class="fieldcontain">
					<span id="workPhone-label" class="property-label"><g:message code="customerEmployment.workPhone.label" default="Work Phone" /></span>
					
						<span class="property-value" aria-labelledby="workPhone-label"><g:fieldValue bean="${customerEmploymentInstance}" field="workPhone"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${customerEmploymentInstance?.id}" />
					<g:link class="edit" action="edit" id="${customerEmploymentInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
