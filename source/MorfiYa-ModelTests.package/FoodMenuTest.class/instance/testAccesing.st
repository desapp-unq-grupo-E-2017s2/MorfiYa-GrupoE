tests
testAccesing
	| foodMenu |
	foodMenu := FoodMenu
		named: 'McCombo'
		description: 'Burguer + fries and coke'
		validDatePeriod: {((Monday to: Friday) -> (8 to: 20))} asDictionary
		deliveryTimePeriod: {((Monday to: Friday) -> (8 to: 20))} asDictionary
		deliveryTimeAverage: 60
		price: 30
		maximumSaleQuantity: 200.
	self
		assert: foodMenu name equals: 'McCombo';
		assert: foodMenu description equals: 'Burguer + fries and coke';
		assert: foodMenu validDatePeriod
			equals: {((Monday to: Friday) -> (8 to: 20))} asDictionary;
		assert: foodMenu deliveryTimePeriod
			equals: {((Monday to: Friday) -> (8 to: 20))} asDictionary;
		assert: foodMenu deliveryTimeAverage equals: 60;
		assert: foodMenu price equals: 30;
		assert: foodMenu maximumSaleQuantity equals: 200