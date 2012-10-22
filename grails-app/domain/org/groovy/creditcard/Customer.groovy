package org.groovy.creditcard

class Customer {
	long accountNumber
	//int applicationID
	String emailID
	String firstName
	String lastName
	String street
	String apt
	String city
	String state
	int zip
	long phone
	Date dob
	long ssn
	Date applicationDate
	String isVerified
	String comments
	//CustomerBank customerbank
	
	void setComments(String comments){
		this.comments = comments;
	}
	
	static mapping = {
		table 'customer'
		version false
		id generator:'increment', column:'applicationID'
		accountNumber column: 'accountNumber'
		emailID column: 'emailID'
		firstName column: 'firstName'
		lastName column: 'lastName'
		street column: 'street'
		apt column: 'apt'
		city column: 'city'
		state column: 'state'
		zip column: 'zip'
		phone column: 'phone'
		dob column: 'dob'
		ssn column: 'ssn'
		applicationDate column: 'applicationDate'
		isVerified column: 'isVerified'
		comments column: 'comments'
		
	}
    static constraints = {
//		applicationID blank:false, unique:true
		accountNumber blank:false, unique:true
		emailID blank:false, email:true
		firstName blank:false
		lastName blank:false
		street blank:false
		apt blank:false
		city blank:false
		state blank:false
		zip blank:false
		phone blank:false
		dob blank:false
		ssn blank:false
		applicationDate blank:false
		isVerified nullable:true
		comments nullable:true
		//customerbank unique: true
    }
}
