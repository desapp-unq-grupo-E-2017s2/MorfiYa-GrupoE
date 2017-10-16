tests
testCustomerWithInvalidTaxpayerID

	| contactInfo |
	
	contactInfo := ContactInformation
		adressedWith: 'Calle falsa 123'
		locatedIn: 'Springfield'
		withEmail: 'hernan.coronel@yahoo.com'
		andPhoneNumber: '42523060'.
		
	self
		should: [ Customer named: 'Hernan Coronel' identifiedBy: '00000000000' with: contactInfo ]
		raise: InstanceCreationFailed
		withExceptionDo: [ :exception | self assert: exception messageText equals: 'El cuit debe tenes 11 digitos y ser distinto a 0' ]