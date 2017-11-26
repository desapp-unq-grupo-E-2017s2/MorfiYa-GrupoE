Test Support
user
	| contactInfo |
	contactInfo := ContactInformation
		adressedWith: 'Calle falsa 123'
		locatedIn: 'Springfield'
		withEmail: 'hernan.coronel@yahoo.com'
		password: 'asd'
		andPhoneNumber: '42523060'.
	^ User
		identifiedBy: '23344567899'
		named: 'Hernan'
		and: 'Coronel'
		describedAs: contactInfo