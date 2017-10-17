Tests
testRemoveFoodMenu
	| foodMenu |
	self assert: foodMenuPersistenceSystem foodMenuCount equals: 0.
	foodMenu := self foodMenu.
	foodMenuPersistenceSystem addFoodMenu: foodMenu.
	self assert: foodMenuPersistenceSystem foodMenuCount equals: 1.
	foodMenuPersistenceSystem removeFoodMenu: foodMenu.
	self assert: foodMenuPersistenceSystem foodMenuCount equals: 0