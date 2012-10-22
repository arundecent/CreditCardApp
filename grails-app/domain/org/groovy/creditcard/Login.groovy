package org.groovy.creditcard

class Login {
	
	String username
	String password
	String usertype
	int accountnum
	int isActive
	
	static mapping = {
		table 'login'
		version false
		id generator: 'identity', name: 'username'
		password column: 'password'
		usertype column: 'usertype'
		accountnum column: 'accountnum'
		isActive column: 'isActive'
	}

    static constraints = {
		username(blank:false,unique:true)
		password(blank:false,password:true)
		usertype(blank:false)
		accountnum(blank:false)
		isActive(blank:false)

    }
}
