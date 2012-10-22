<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<body>
<g:if test="${flash.message}">
	<div class="message">
		${flash.message} 
	</div>
</g:if>
<g:if test="${session.user}">
	<br/>
		Logged in as : ${session.user} | <g:link action="logout"> Logout </g:link> 
</g:if>
<g:else>
<g:form controller="Login" action="login" style="padding-left:200px"><br>
<br>

<center>Username: <g:textField name="username" /><br><br>
<br>
Password: <g:textField name="password" /><br><br>
<br>
<a href="#"> Forgot Password? </a> &nbsp; &nbsp; <a href="#" > Signup </a> 
<br><br>
<div class="buttons">
    <span class="button"><g:submitButton name="login" class="save" value="${message(code: 'default.button.login.label', default: 'Login')}" /></span>
</div>
</center>
</g:form>
</g:else>
</body>
</html>
