Tests
testAddFoodMenu
	| foodMenu foodMenuFromDatabase |
	self assert: foodMenuPersistenceSystem foodMenuCount equals: 0.
	foodMenu := FoodMenu
		named: 'McCombo'
		description: 'Burguer + fries and coke'
		categories: burguerCategory
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
	foodMenuPersistenceSystem addFoodMenu: foodMenu.
	self assert: foodMenuPersistenceSystem foodMenuCount equals: 1.
	foodMenuFromDatabase := foodMenuPersistenceSystem allFoodMenus anyOne.
	self assert: foodMenuFromDatabase equals: foodMenu