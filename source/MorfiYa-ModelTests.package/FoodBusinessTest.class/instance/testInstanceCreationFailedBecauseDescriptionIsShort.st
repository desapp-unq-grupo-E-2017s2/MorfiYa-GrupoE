Tests
testInstanceCreationFailedBecauseDescriptionIsShort

	self
		should: [ FoodBusiness
				named: 'McDonalds'
				withLogo: 'logo1'
				mapLocation: 127 @ 127
				described: 'aasdas'
				webSite: 'www.facebook.com/pipi1'
				serviceTime: {((Monday to: Friday) -> (8 to: 20))} asDictionary
				deliveryLocation: 'direccion2']
		raise: InstanceCreationFailed
		withExceptionDo: [ :exception | 
			self
				assert: exception messageText
				equals: 'La descipción debe tener al menos 30 caracteres' ]