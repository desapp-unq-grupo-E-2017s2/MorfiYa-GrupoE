Tests
testUpdateFoodMenu
	| foodMenu anotherFoodMenu foodMenuFromDatabase |
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
	anotherFoodMenu := FoodMenu
		named: 'TripleMc'
		description: 'Triple burger combo with fries and coke'
		categories: burguerCategory
		deliveryValue: 35
		validDatePeriod: {((Monday to: Friday) -> (8 to: 20))} asDictionary
		deliveryTimePeriod: {((Monday to: Friday) -> (8 to: 20))} asDictionary
		deliveryTimeAverage: 60
		price: 50
		minimumQuantity: 20
		minimumQuantityPrice: 40
		minimumQuantity2: 71
		minimumQuantityPrice2: 35
		maximumSaleQuantity: 180.
	foodMenuPersistenceSystem addFoodMenu: foodMenu.
	foodMenuPersistenceSystem updateFoodMenu: foodMenu with: anotherFoodMenu.
	self assert: foodMenuPersistenceSystem foodMenuCount equals: 1.
	foodMenuFromDatabase := foodMenuPersistenceSystem allFoodMenus anyOne.
	self assert: foodMenuFromDatabase menuName equals: 'TripleMc'.
	self assert: foodMenuFromDatabase description equals: 'Triple burger combo with fries and coke'.
	self assert: foodMenuFromDatabase deliveryTimeAverage equals: 60.
	self assert: foodMenuFromDatabase deliveryValue equals: 35.
	self assert: foodMenuFromDatabase price equals: 50.
	