tests
testCustomerWithInvalidTaxpayerID

	| location |
	
	self
		should: [ Customer
				named: 'Hernan Coronel'
				identifiedBy: '00000000000'
				with: 'hernan.coronel@yahoo.com'
				and: '01134908754'
				locatedIn: location ]
		raise: InstanceCreationFailed
		withExceptionDo: [ :exception | self assert: exception messageText equals: 'El cuit debe tenes 11 digitos y ser distinto a 0' ]