tests
testScoreOutOfRange
	self
		should: [ |foodBusiness|
			foodBusiness := FoodBusiness
				named: 'McDonalds'
				withLogo: 'logo1'
				locationAt: 'direccion'
				address: 'Juncal 123'
				mapLocation: 127 @ 127
				described:
					'aasdasasdddddddddddddddddddddddddddddddddddddddddddddd'
				webSite: 'www.facebook.com/pipi1'
				email: 'asd@asd.com'
				phone: '42522825'
				serviceTime: {((Monday to: Friday) -> (8 to: 20))} asDictionary
				deliveryLocation: 'direccion2'.
				 foodBusiness addScore: 7.]
		raise: Error 
		withExceptionDo: [ :exception | 
			self
				assert: exception messageText
				equals: 'La puntuación debe ser entre 1 y 5' ]