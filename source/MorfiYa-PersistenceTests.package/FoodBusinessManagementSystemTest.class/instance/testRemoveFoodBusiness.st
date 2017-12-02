Tests
testRemoveFoodBusiness

	| foodBusiness |
	self assert: foodBusinessManagementSystem count equals: 0.
	foodBusiness := self foodBusiness.
	foodBusinessManagementSystem add: foodBusiness.
	self assert: foodBusinessManagementSystem count equals: 1.
	foodBusinessManagementSystem remove: foodBusiness.
	self assert: foodBusinessManagementSystem count equals: 0