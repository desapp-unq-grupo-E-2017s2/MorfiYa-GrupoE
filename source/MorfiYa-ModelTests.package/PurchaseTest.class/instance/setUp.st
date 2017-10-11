setting up
setUp
	
	|bigMc mcCombo categoryBurguer|
	
	categoryBurguer := OrderedCollection new.
	categoryBurguer add: Category burguer.
	
	bigMc := FoodMenu named: 'BigMc' description: 'Doble hamburguesa con queso'  categories: categoryBurguer deliveryValue: 40 validDatePeriod: {((Monday to: Friday) -> (8 to: 20))} asDictionary  deliveryTimePeriod: {((Monday to: Friday) -> (8 to: 20))} asDictionary deliveryTimeAverage: 30 price: 99 minimumQuantity: 10 minimumQuantityPrice: 90 minimumQuantity2: 71 minimumQuantityPrice2: 85 maximumSaleQuantity: 100.
	
	mcCombo := FoodMenu named: 'mcCombo' description: 'Combo random de cualquier dia'  categories: categoryBurguer deliveryValue: 40 validDatePeriod: {((Monday to: Friday) -> (8 to: 20))} asDictionary  deliveryTimePeriod: {((Monday to: Friday) -> (8 to: 20))} asDictionary deliveryTimeAverage: 50 price: 99 minimumQuantity: 10 minimumQuantityPrice: 90 minimumQuantity2: 71  minimumQuantityPrice2: 85 maximumSaleQuantity: 60.
	
	menusDictionary := Dictionary new.
	menusDictionary at: bigMc put: 1.
	menusDictionary at: mcCombo put: 2.