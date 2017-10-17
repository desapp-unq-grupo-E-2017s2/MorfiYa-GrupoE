Tests
testUpdateFoodMenu
	| foodMenu anotherFoodMenu foodMenuFromDatabase |
	self assert: foodMenuPersistenceSystem foodMenuCount equals: 0.
	foodMenu := self foodMenu.
	anotherFoodMenu := self anotherFoodmenu.
	foodMenuPersistenceSystem addFoodMenu: foodMenu.
	foodMenuPersistenceSystem updateFoodMenu: foodMenu with: anotherFoodMenu.
	self assert: foodMenuPersistenceSystem foodMenuCount equals: 1.
	foodMenuFromDatabase := foodMenuPersistenceSystem allFoodMenus anyOne.
	self assert: foodMenuFromDatabase name equals: 'TripleMc'.
	self
		assert: foodMenuFromDatabase description
		equals: 'Triple burger combo with fries and coke'.
	self assert: foodMenuFromDatabase deliveryTimeAverage equals: 60.
	self assert: foodMenuFromDatabase deliveryValue equals: 35.
	self assert: foodMenuFromDatabase price equals: 50