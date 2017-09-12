tests
testAccesing
	| foodMenu |
	foodMenu := FoodMenu
		named: 'McCombo'
		description: 'Burguer + fries and coke'
		categories: categories
		deliveryValue: 40
		validDatePeriod: {((Monday to: Friday) -> (8 to: 20))} asDictionary
		deliveryTimePeriod: {((Monday to: Friday) -> (8 to: 20))} asDictionary
		deliveryTimeAverage: 60
		price: 30
		minimumQuantity: 10
		minimumQuantityPrice: 20
		minimumQuantity2: 71
		minimumQuantityPrice2: 10
		maximumSaleQuantity: 200.
	self
		assert: foodMenu menuName equals: 'McCombo';
		assert: foodMenu description equals: 'Burguer + fries and coke';
		assert: foodMenu categories equals: categories;
		assert: foodMenu deliveryValue equals: 40;
		assert: foodMenu validDatePeriod equals: {((Monday to: Friday) -> (8 to: 20))} asDictionary;
		assert: foodMenu deliveryTimePeriod equals: {((Monday to: Friday) -> (8 to: 20))} asDictionary;
		assert: foodMenu deliveryTimeAverage equals: 60;
		assert: foodMenu price equals: 30;
		assert: foodMenu minimumQuantity equals: 10;
		assert: foodMenu minimumQuantityPrice equals: 20;
		assert: foodMenu minimumQuantity2 equals: 71;
		assert: foodMenu minimumQuantityPrice2 equals: 10;
		assert: foodMenu maximumSaleQuantity equals: 200