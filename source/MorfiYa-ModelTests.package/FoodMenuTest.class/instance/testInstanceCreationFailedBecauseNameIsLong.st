tests
testInstanceCreationFailedBecauseNameIsLong
	self
		should: [ FoodMenu
				named: 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa'
				description: 'Burguer + fries and coke'
				categories: categories
				deliveryValue: 40
				validDatePeriod: {((Monday to: Friday) -> (8 to: 20))} asDictionary
				deliveryTimePeriod: {((Monday to: Friday) -> (8 to: 20))} asDictionary
				deliveryTimeAverage: 60
				price: 30
				minimumQuantity: 10
				minimumQuantityPrice: 20
				minimumQuantity2: 30
				minimumQuantityPrice2: 10
				maximumSaleQuantity: 200 ]
		raise: InstanceCreationFailed
		withExceptionDo:
			[ :exception | self assert: exception messageText equals: 'El nombre debe tener menos de 30 caracteres' ]