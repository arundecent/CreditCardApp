
<%@ page import="org.groovy.creditcard.CustomerEmployment" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'customerEmployment.label', default: 'CustomerEmployment')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-customerEmployment" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-customerEmployment" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="annualIncome" title="${message(code: 'customerEmployment.annualIncome.label', default: 'Annual Income')}" />
					
						<g:sortableColumn property="customer_id" title="${message(code: 'customerEmployment.customer_id.label', default: 'Customerid')}" />
					
						<g:sortableColumn property="residentialStatus" title="${message(code: 'customerEmployment.residentialStatus.label', default: 'Residential Status')}" />
					
						<g:sortableColumn property="monthlyMortgageRent" title="${message(code: 'customerEmployment.monthlyMortgageRent.label', default: 'Monthly Mortgage Rent')}" />
					
						<g:sortableColumn property="otherAnnualIncome" title="${message(code: 'customerEmployment.otherAnnualIncome.label', default: 'Other Annual Income')}" />
					
						<g:sortableColumn property="workPhone" title="${message(code: 'customerEmployment.workPhone.label', default: 'Work Phone')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${customerEmploymentInstanceList}" status="i" var="customerEmploymentInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${customerEmploymentInstance.id}">${fieldValue(bean: customerEmploymentInstance, field: "annualIncome")}</g:link></td>
					
						<td>${fieldValue(bean: customerEmploymentInstance, field: "customer_id")}</td>
					
						<td>${fieldValue(bean: customerEmploymentInstance, field: "residentialStatus")}</td>
					
						<td>${fieldValue(bean: customerEmploymentInstance, field: "monthlyMortgageRent")}</td>
					
						<td>${fieldValue(bean: customerEmploymentInstance, field: "otherAnnualIncome")}</td>
					
						<td>${fieldValue(bean: customerEmploymentInstance, field: "workPhone")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${customerEmploymentInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
