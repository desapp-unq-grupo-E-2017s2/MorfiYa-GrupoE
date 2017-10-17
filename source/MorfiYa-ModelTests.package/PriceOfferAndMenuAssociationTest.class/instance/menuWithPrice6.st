Test Support
menuWithPrice6

	^FoodMenu
		named: 'McCombo'
		description: 'Burguer + fries and coke'
		validDatePeriod: {((Monday to: Friday) -> (8 to: 20))} asDictionary
		deliveryTimePeriod: {((Monday to: Friday) -> (8 to: 20))} asDictionary
		deliveryTimeAverage: 60
		price: 6
		maximumSaleQuantity: 200.