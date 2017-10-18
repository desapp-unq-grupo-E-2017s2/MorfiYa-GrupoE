Tests
testAddFoodBusiness

	| foodBusiness foodBusinessFromDatabase |
	self assert: foodBusinessManagementSystem foodBusinessCount equals: 0.
	foodBusiness := self foodBusiness.
	foodBusinessManagementSystem addFoodBusiness: foodBusiness.
	self assert: foodBusinessManagementSystem foodBusinessCount equals: 1.
	foodBusinessFromDatabase := foodBusinessManagementSystem allFoodBusiness anyOne.
	self assert: foodBusiness equals: foodBusinessFromDatabase