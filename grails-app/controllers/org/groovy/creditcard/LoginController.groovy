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
	boolean isValid = Login.findWhere(username: params['username'], password: params['password'])
		if (isValid){
			def userRecord = Login.findByUsername(params['username']);
			session.usertype = userRecord.usertype;
			session.username = params['username'];
			redirect(action:"customerhome")
			//redirect(action:"create", controller:"customer")
		}
		else{
		System.out.println("Invalid");
		flash.message = "message.invalid.login"
		flash.default = "Invalid login"
		redirect(uri:"/")
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
	
	def customerhome = {
		System.out.println("Customer home");
		if(session.username)
		{
			System.out.println("Redirecting to customer home...");
			System.out.println("usertype-"+session.usertype);
			redirect(action:"customerhome",controller:"customer")
		}
		else
		{
			redirect(action:"logout")
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
