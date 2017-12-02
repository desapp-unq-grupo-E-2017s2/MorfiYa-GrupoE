Tests
testRemoveFoodMenu
	| foodMenu |
	self assert: foodMenuPersistenceSystem count  equals: 0.
	foodMenu := self foodMenu.
	foodMenuPersistenceSystem add: foodMenu.
	self assert: foodMenuPersistenceSystem count equals: 1.
	foodMenuPersistenceSystem remove: foodMenu.
	self assert: foodMenuPersistenceSystem count equals: 0