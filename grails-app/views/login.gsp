<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="layout" content="main">
</head>
<body>
<div class="footer" role="contentinfo"><h1>Credit Card Application</h1></div>
<center>
<g:if test="${session.user}">
	<br/>
		Logged in as : ${session.username}
		${response.sendRedirect(createLink(controller: 'customer', action: 'customerhome'))}
</g:if>
<g:else>
<g:form controller="Login" action="login" style="padding-left:200px"><br>
<br>

<center>Username: <g:textField name="username" /><br><br>
<br>
Password: <g:passwordField name="password" /><br><br>
<br>
<g:message code="${flash.message}" args="${flash.args}" default="${flash.default}"/>
<br>
<a href="#"> Forgot Password? </a> &nbsp; &nbsp; <a href="#" > Signup </a> 
<br><br>
<div class="buttons">    
    <g:submitButton name="login" class="save" value="${message(code: 'default.button.login.label', default: 'Login')}" />
</div>
</center>
</g:form>
</g:else>
</center>
</body>
</html>
