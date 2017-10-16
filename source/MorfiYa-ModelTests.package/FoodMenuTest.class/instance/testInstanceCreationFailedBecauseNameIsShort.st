tests
testInstanceCreationFailedBecauseNameIsShort
	self
		should: [ FoodMenu
				named: 'asd'
				description: 'Burguer + fries and coke'
				validDatePeriod: {((Monday to: Friday) -> (8 to: 20))} asDictionary
				deliveryTimePeriod: {((Monday to: Friday) -> (8 to: 20))} asDictionary
				deliveryTimeAverage: 60
				price: 30
				maximumSaleQuantity: 200 ]
		raise: InstanceCreationFailed
		withExceptionDo: [ :exception | 
			self
				assert: exception messageText
				equals: 'El nombre debe tener al menos 4 caracteres' ]