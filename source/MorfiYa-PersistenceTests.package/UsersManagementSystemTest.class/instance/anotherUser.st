Test Support
anotherUser
	| contactInfo |
	contactInfo := ContactInformation
		adressedWith: 'Calle falsa 123'
		locatedIn: 'Springfield'
		withEmail: 'hernan.coronel@yahoo.com'
		andPhoneNumber: '42523060'.
	^ User
		identifiedBy: '23344567899'
		named: 'Fabio'
		and: 'Corona'
		describedAs: contactInfo