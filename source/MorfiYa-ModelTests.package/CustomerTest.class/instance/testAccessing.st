tests
testAccessing
	| customer contactInfo |
	contactInfo := ContactInformation
		adressedWith: 'Calle falsa 123'
		locatedIn: 'Springfield'
		withEmail: 'hernan.coronel@yahoo.com'
		andPhoneNumber: '42523060'.
	customer := Customer
		named: 'Hernan Coronel'
		with: contactInfo.
	self
		assert: customer name equals: 'Hernan Coronel';
		assert: customer email equals: 'hernan.coronel@yahoo.com';
		assert: customer telephone equals: '42523060';
		assert: customer address equals: 'Calle falsa 123';
		assert: customer location equals: 'Springfield'