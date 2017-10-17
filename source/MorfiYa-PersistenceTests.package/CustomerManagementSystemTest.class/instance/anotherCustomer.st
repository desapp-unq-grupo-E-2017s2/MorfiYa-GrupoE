Test Support
anotherCustomer
	| contactInfo |
	contactInfo := ContactInformation
		adressedWith: 'Calle falsa 123'
		locatedIn: 'Springfield'
		withEmail: 'hernan.coronel@yahoo.com'
		andPhoneNumber: '42523060'.
	^ Customer named: 'Hernan Coronel2' with: contactInfo