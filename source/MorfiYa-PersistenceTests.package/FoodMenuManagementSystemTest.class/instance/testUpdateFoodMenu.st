Tests
testUpdateFoodMenu
	| foodMenu anotherFoodMenu foodMenuFromDatabase |
	self assert: foodMenuPersistenceSystem count equals: 0.
	foodMenu := self foodMenu.
	anotherFoodMenu := self anotherFoodMenu.
	foodMenuPersistenceSystem add: foodMenu.
	foodMenuPersistenceSystem update: foodMenu with: anotherFoodMenu.
	self assert: foodMenuPersistenceSystem count equals: 1.
	foodMenuFromDatabase := foodMenuPersistenceSystem getAll  anyOne.
	self assert: foodMenuFromDatabase name equals: 'TripleMc'.
	self
		assert: foodMenuFromDatabase description
		equals: 'Triple burger combo with fries and coke'.
	self assert: foodMenuFromDatabase deliveryTimeAverage equals: 60.
	self assert: foodMenuFromDatabase price equals: 30