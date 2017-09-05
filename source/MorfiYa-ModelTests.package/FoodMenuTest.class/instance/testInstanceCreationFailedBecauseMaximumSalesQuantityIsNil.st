tests
testInstanceCreationFailedBecauseMaximumSalesQuantityIsNil
	self
		should: [  FoodMenu
				named: 'McCombo'
				description: 'Burguer + fries and coke'
				categories: categories
				deliveryValue: 10
				validDatePeriod: {((Monday to: Friday) -> (8 to: 20))} asDictionary
				deliveryTimePeriod: {((Monday to: Friday) -> (8 to: 20))} asDictionary
				deliveryTimeAverage: 60
				price: 30
				minimumQuantity: 10
				minimumQuantityPrice: 0
				minimumQuantity2: 71
				minimumQuantityPrice2: 1000
				maximumSaleQuantity: nil ]
		raise: InstanceCreationFailed
		withExceptionDo: [ :exception | 
			self
				assert: exception messageText
				equals: 'La cantidad máxima de ventas diarias no puede ser vacío' ]