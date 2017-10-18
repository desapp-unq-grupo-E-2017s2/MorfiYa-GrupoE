Tests
testRemoveFoodBusiness

	| foodBusiness |
	self assert: foodBusinessManagementSystem foodBusinessCount equals: 0.
	foodBusiness := self foodBusiness.
	foodBusinessManagementSystem addFoodBusiness: foodBusiness.
	self assert: foodBusinessManagementSystem foodBusinessCount equals: 1.
	foodBusinessManagementSystem removeFoodBusiness: foodBusiness.
	self assert: foodBusinessManagementSystem foodBusinessCount equals: 0