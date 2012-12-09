package org.groovy.creditcard

class CustomerBank {
	
	int id
	int customer_id
	int bankAccountExists
	String checkingsAccount
	String savingsAcc
	String customer_bankcol
	//Customer customer
	//static belongsTo = [customer:Customer]
	
	static mapping = {
		table 'customer_bank'
		version false
		id generator:'increment', column:'id'
		bankAccountExists column:'bankAccountExists'
		checkingsAccount column:'checkingsAccount'
		savingsAcc column:'savingsAcc'
		customer_bankcol column:'customer_bankcol'
		version false
	}
    static constraints = {
		//customer_id(blank:false,unique:true)
		bankAccountExists(display:false)
		checkingsAccount(blank:false,unique:true)
		savingsAcc(blank:false,unique:true)
		customer_bankcol(display:false,nullable:true)
    }
}
