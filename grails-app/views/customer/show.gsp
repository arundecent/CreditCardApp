
<%@ page import="org.groovy.creditcard.Customer" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'customer.label', default: 'Customer')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-customer" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-customer" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list customer">
			
				<g:if test="${customerInstance?.accountNumber}">
				<li class="fieldcontain">
					<span id="accountNumber-label" class="property-label"><g:message code="customer.accountNumber.label" default="Account Number" /></span>
					
						<span class="property-value" aria-labelledby="accountNumber-label"><g:fieldValue bean="${customerInstance}" field="accountNumber"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${customerInstance?.emailID}">
				<li class="fieldcontain">
					<span id="emailID-label" class="property-label"><g:message code="customer.emailID.label" default="Email ID" /></span>
					
						<span class="property-value" aria-labelledby="emailID-label"><g:fieldValue bean="${customerInstance}" field="emailID"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${customerInstance?.firstName}">
				<li class="fieldcontain">
					<span id="firstName-label" class="property-label"><g:message code="customer.firstName.label" default="First Name" /></span>
					
						<span class="property-value" aria-labelledby="firstName-label"><g:fieldValue bean="${customerInstance}" field="firstName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${customerInstance?.lastName}">
				<li class="fieldcontain">
					<span id="lastName-label" class="property-label"><g:message code="customer.lastName.label" default="Last Name" /></span>
					
						<span class="property-value" aria-labelledby="lastName-label"><g:fieldValue bean="${customerInstance}" field="lastName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${customerInstance?.street}">
				<li class="fieldcontain">
					<span id="street-label" class="property-label"><g:message code="customer.street.label" default="Street" /></span>
					
						<span class="property-value" aria-labelledby="street-label"><g:fieldValue bean="${customerInstance}" field="street"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${customerInstance?.apt}">
				<li class="fieldcontain">
					<span id="apt-label" class="property-label"><g:message code="customer.apt.label" default="Apt" /></span>
					
						<span class="property-value" aria-labelledby="apt-label"><g:fieldValue bean="${customerInstance}" field="apt"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${customerInstance?.city}">
				<li class="fieldcontain">
					<span id="city-label" class="property-label"><g:message code="customer.city.label" default="City" /></span>
					
						<span class="property-value" aria-labelledby="city-label"><g:fieldValue bean="${customerInstance}" field="city"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${customerInstance?.state}">
				<li class="fieldcontain">
					<span id="state-label" class="property-label"><g:message code="customer.state.label" default="State" /></span>
					
						<span class="property-value" aria-labelledby="state-label"><g:fieldValue bean="${customerInstance}" field="state"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${customerInstance?.zip}">
				<li class="fieldcontain">
					<span id="zip-label" class="property-label"><g:message code="customer.zip.label" default="Zip" /></span>
					
						<span class="property-value" aria-labelledby="zip-label"><g:fieldValue bean="${customerInstance}" field="zip"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${customerInstance?.phone}">
				<li class="fieldcontain">
					<span id="phone-label" class="property-label"><g:message code="customer.phone.label" default="Phone" /></span>
					
						<span class="property-value" aria-labelledby="phone-label"><g:fieldValue bean="${customerInstance}" field="phone"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${customerInstance?.dob}">
				<li class="fieldcontain">
					<span id="dob-label" class="property-label"><g:message code="customer.dob.label" default="Dob" /></span>
					
						<span class="property-value" aria-labelledby="dob-label"><g:formatDate date="${customerInstance?.dob}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${customerInstance?.ssn}">
				<li class="fieldcontain">
					<span id="ssn-label" class="property-label"><g:message code="customer.ssn.label" default="Ssn" /></span>
					
						<span class="property-value" aria-labelledby="ssn-label"><g:fieldValue bean="${customerInstance}" field="ssn"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${customerInstance?.applicationDate}">
				<li class="fieldcontain">
					<span id="applicationDate-label" class="property-label"><g:message code="customer.applicationDate.label" default="Application Date" /></span>
					
						<span class="property-value" aria-labelledby="applicationDate-label"><g:formatDate date="${customerInstance?.applicationDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${customerInstance?.isVerified}">
				<li class="fieldcontain">
					<span id="isVerified-label" class="property-label"><g:message code="customer.isVerified.label" default="Is Verified" /></span>
					
						<span class="property-value" aria-labelledby="isVerified-label"><g:fieldValue bean="${customerInstance}" field="isVerified"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${customerInstance?.comments}">
				<li class="fieldcontain">
					<span id="comments-label" class="property-label"><g:message code="customer.comments.label" default="Comments" /></span>
					
						<span class="property-value" aria-labelledby="comments-label"><g:fieldValue bean="${customerInstance}" field="comments"/></span>
					
				</li>
				</g:if>
			
			
			</ol>
			<g:if test="${customerInstance?.comments == null}">
			
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${customerInstance?.id}" />
					<g:link class="edit" action="apply" id="${customerInstance?.id}"><g:message code="default.button.submit.label" default="Submit" /></g:link>
				</fieldset>
			</g:form>
		</g:if>
		</div>
	</body>
</html>
