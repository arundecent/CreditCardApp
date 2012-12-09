
<%@ page import="org.groovy.creditcard.CustomerBank" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'customerBank.label', default: 'CustomerBank')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-customerBank" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-customerBank" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="customer_id" title="${message(code: 'customerBank.customer_id.label', default: 'Customerid')}" />
					
						<g:sortableColumn property="bankAccountExists" title="${message(code: 'customerBank.bankAccountExists.label', default: 'Bank Account Exists')}" />
					
						<g:sortableColumn property="checkingsAccount" title="${message(code: 'customerBank.checkingsAccount.label', default: 'Checkings Account')}" />
					
						<g:sortableColumn property="savingsAcc" title="${message(code: 'customerBank.savingsAcc.label', default: 'Savings Acc')}" />
					
						<g:sortableColumn property="customer_bankcol" title="${message(code: 'customerBank.customer_bankcol.label', default: 'Customerbankcol')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${customerBankInstanceList}" status="i" var="customerBankInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${customerBankInstance.id}">${fieldValue(bean: customerBankInstance, field: "customer_id")}</g:link></td>
					
						<td>${fieldValue(bean: customerBankInstance, field: "bankAccountExists")}</td>
					
						<td>${fieldValue(bean: customerBankInstance, field: "checkingsAccount")}</td>
					
						<td>${fieldValue(bean: customerBankInstance, field: "savingsAcc")}</td>
					
						<td>${fieldValue(bean: customerBankInstance, field: "customer_bankcol")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${customerBankInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
