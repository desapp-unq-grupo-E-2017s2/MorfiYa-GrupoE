tests
testAccessing

	| contactInfo |
	
	contactInfo := ContactInformation
		adressedWith: 'Chiclana 933'
		locatedIn: 'Don Bosco'
		withEmail: 'pepito@gmail.com'
		password: 'asd'
		andPhoneNumber: '42523060'.
		
	self
		assert: contactInfo address equals: 'Chiclana 933';
		assert: contactInfo locality equals: 'Don Bosco';
		assert: contactInfo email equals: 'pepito@gmail.com';
		assert: contactInfo password equals: 'asd';
		assert: contactInfo phoneNumber equals: '42523060'