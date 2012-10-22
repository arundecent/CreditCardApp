package org.groovy.creditcard

class LoginController {
	
	static scaffold = Login
	

    def index() { }
	
	def login = {
	System.out.println("Inside");
	if(params == null){
	 redirect(uri:"/login.gsp")
	}
	else {
	System.out.println(params['username']);
	System.out.println(params['password']);
	boolean isValid = Login.findWhere(username: params['username'], password: params['password'])
//  session.user = user
		if (isValid){
			def userRecord = Login.findByUsername(params['username']);
			session.usertype = userRecord.usertype;
			session.username = params['username'];
			redirect(action:"create", controller:"customer")
		}
		else{
		System.out.println("Invalid");
		redirect(uri:"/login.gsp")
		}
	}
	
	}
	
	def logout = {
		if(session.username)
		{
			session.invalidate()
			redirect(uri:"/login.gsp")
			}
		}
	/*def login = {
		if(params.userName=="admin" && params.password=="Password"){
			flash.message =  "Login Succeded"
			session.user = "admin"
		}
		else {
			flash.message =  "Login Failed"
		}
			
		redirect (action: 'newPage')
	}
	
	def logout = {
		session.user = null
		redirect(action: 'index')
	}
	
	def newPage = {
		redirect(action: 'index')
	}*/
}
