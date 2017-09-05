tests
testInstanceCreationFailedBecauseMinimumQuantityPrice2IsHigherThanMinimumQuantityPrice
	self
		should: [ FoodMenu
				named: 'McCombo'
				description: 'Burguer + fries and coke'
				categories: categories
				deliveryValue: 10
				validDatePeriod: {((Monday to: Friday) -> (8 to: 20))} asDictionary
				deliveryTimePeriod: {((Monday to: Friday) -> (8 to: 20))} asDictionary
				deliveryTimeAverage: 60
				price: 200
				minimumQuantity: 40
				minimumQuantityPrice: 50
				minimumQuantity2: 71
				minimumQuantityPrice2: 60
				maximumSaleQuantity: 200 ]
		raise: InstanceCreationFailed
		withExceptionDo: [ :exception | 
			self
				assert: exception messageText
				equals: 'El precio de cantidad mínima 2 debe ser menor al precio de cantidad mínima' ]