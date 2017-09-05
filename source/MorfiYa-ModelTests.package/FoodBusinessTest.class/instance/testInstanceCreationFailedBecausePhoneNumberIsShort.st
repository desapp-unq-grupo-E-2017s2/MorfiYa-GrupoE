tests
testInstanceCreationFailedBecausePhoneNumberIsShort
	self
		should: [ FoodBusiness
				named: 'McDonalds'
				withLogo: 'logo1'
				locationAt: 'direccion'
				address: 'Juncal 123'
				mapLocation: 127 @ 127
				described: 'aasdasqwwqewqewqeqweqweqweqewqewqweqweqewqewqewqweqewqewqewq'
				webSite: 'www.facebook.com/pipi1'
				email: 'asd@asd.com'
				phone: '02825'
				serviceTime: {((Monday to: Friday) -> (8 to: 20))} asDictionary
				deliveryLocation: 'direccion2' ]
		raise: InstanceCreationFailed
		withExceptionDo: [ :exception | 
			self
				assert: exception messageText
				equals: 'El numero debe tener un mínimo de 6 digitos(contando el codigo de area)' ]