package org.groovy.creditcard

class Results {
	int customerID
	int cardTypeID
	int creditLimit
	String isAccept
	Date validity
	String manualOverRide
	int approverID
	String systemcomments
	String manualcomments
	int applicationID
	int totalScore
	
	static mapping = {
		cache usage: 'read-only', include: 'non-lazy'
		table 'creditcard_application_results'
		version false
		id generator:'increment', column: 'processingId'
		customerID column:'customerID'
		cardTypeID column:'cardTypeID'
		creditLimit column:'creditLimit'
		isAccept column:'isAccept'
		validity column:'validity'
		manualOverRide column:'manualOverRide'
		approverID column:'approverID'
		systemcomments column:'SystemComments'
		manualcomments column:'ManualComments'
		applicationID column:'applicationID'
		totalScore column:'totalScore'
	}
	
	static constraints = {
		customerID blank:false
		cardTypeID blank:false
		creditLimit blank:false
		isAccept blank:false
		validity blank:false
		manualOverRide blank:false
		approverID blank:false
		systemcomments nullable:true
		manualcomments nullable:true
		applicationID blank:false, unique:true
		totalScore blank:false
		
	}

}
