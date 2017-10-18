tests
testInstanceCreationFailedBecauseDescriptionIsLong

	| contactInfo |
	
	contactInfo := ContactInformation
		adressedWith: 'Calle falsa 123'
		locatedIn: 'Springfield'
		withEmail: 'hernan.coronel@yahoo.com'
		andPhoneNumber: '42523060'.
		
	self
		should: [ FoodBusiness
				named: 'McDonalds'
				withLogo: 'logo1'
				mapLocation: 127 @ 127
				described:
					'aasdasasddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddadssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssasdasdadsadsasdasdasdasdadsadsadsadsdsadsasdadsdsdasadsasdsddsdsdsadsadsads'
				webSite: 'www.facebook.com/pipi1'
				serviceTime: {((Monday to: Friday) -> (8 to: 20))} asDictionary
				deliveryLocation: 'direccion2'
				with: contactInfo ]
		raise: InstanceCreationFailed
		withExceptionDo: [ :exception | self assert: exception messageText equals: 'La descipción debe tener menos de 200 caracteres' ]