tests
testInstanceCreationFailedBecauseDescriptionIsShort
	self
		should: [ FoodMenu
				named: 'McCombo'
				description: 'Burguer + fries'
				validDatePeriod: {((Monday to: Friday) -> (8 to: 20))} asDictionary
				deliveryTimePeriod: {((Monday to: Friday) -> (8 to: 20))} asDictionary
				deliveryTimeAverage: 60
				price: 30
				maximumSaleQuantity: 200 ]
		raise: InstanceCreationFailed
		withExceptionDo: [ :exception | 
			self
				assert: exception messageText
				equals: 'La descripción debe tener al menos 20 caracteres' ]