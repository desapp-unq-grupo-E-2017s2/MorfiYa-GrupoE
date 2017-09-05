tests
testInstanceCreationFailedBecauseCategoryIsEmpty
	self
		should: [ FoodMenu
				named: 'McCombo'
				description: 'Burguer + fries and coke'
				categories: OrderedCollection new
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
		withExceptionDo: [ :exception | 
			self
				assert: exception messageText
				equals: 'El menú debe pertenecer al menos a una categoría' ]