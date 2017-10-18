Tests
testAddFoodMenu
	| foodMenu foodMenuFromDatabase |
	self assert: foodMenuPersistenceSystem foodMenuCount equals: 0.
	foodMenu := self foodMenu.
	foodMenuPersistenceSystem addFoodMenu: foodMenu.
	self assert: foodMenuPersistenceSystem foodMenuCount equals: 1.
	foodMenuFromDatabase := foodMenuPersistenceSystem allFoodMenus anyOne.
	self assert: foodMenuFromDatabase equals: foodMenu