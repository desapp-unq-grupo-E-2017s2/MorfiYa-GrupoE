Tests
testAddFoodMenu

	| foodMenu foodMenuFromDatabase |
	self assert: foodMenuPersistenceSystem count equals: 0.
	foodMenu := self foodMenu.
	foodMenuPersistenceSystem add: foodMenu.
	self assert: foodMenuPersistenceSystem count equals: 1.
	foodMenuFromDatabase := foodMenuPersistenceSystem getAll  anyOne.
	self assert: foodMenuFromDatabase equals: foodMenu