Tests
testAddFoodBusiness

	| foodBusiness foodBusinessFromDatabase |
	self assert: foodBusinessManagementSystem count equals: 0.
	foodBusiness := self foodBusiness.
	foodBusinessManagementSystem add: foodBusiness.
	self assert: foodBusinessManagementSystem count equals: 1.
	foodBusinessFromDatabase := foodBusinessManagementSystem getAll  anyOne.
	self assert: foodBusiness equals: foodBusinessFromDatabase