tests
testInstanceCreationFailedBecauseMinimumQuantityPriceIsLow
	self
		should: [ FoodMenu
				named: 'McCombo'
				description: 'Burguer + fries and coke'
				categories: categories
				deliveryValue: 10
				validDatePeriod: {((Monday to: Friday) -> (8 to: 20))} asDictionary
				deliveryTimePeriod: {((Monday to: Friday) -> (8 to: 20))} asDictionary
				deliveryTimeAverage: 60
				price: 30
				minimumQuantity: 10
				minimumQuantityPrice: -1
				minimumQuantity2: 30
				minimumQuantityPrice2: 10
				maximumSaleQuantity: 200 ]
		raise: InstanceCreationFailed
		withExceptionDo: [ :exception | 
			self
				assert: exception messageText
				equals: 'El precio de la cantidad mínima debe ser al menos 0' ]