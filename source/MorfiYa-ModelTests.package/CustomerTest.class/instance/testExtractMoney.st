tests
testExtractMoney
	
	| customer contactInfo |
	
	contactInfo := ContactInformation
		adressedWith: 'Calle falsa 123'
		locatedIn: 'Springfield'
		withEmail: 'hernan.coronel@yahoo.com'
		andPhoneNumber: '42523060'.
	
	customer := Customer
		named: 'Hernan Coronel'
		identifiedBy: '27388419348'
		with: contactInfo. 
		
	customer depositMoney: 500.
	self assert: customer money equals: 500.
	
	customer extractMoney: 300.
	self assert: customer money equals: 200