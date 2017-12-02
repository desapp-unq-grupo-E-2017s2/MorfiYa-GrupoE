Tests
testUpdateFoodBusiness

	| foodBusiness foodBusinessFromDatabase anotherFoodBusiness |
	self assert: foodBusinessManagementSystem count equals: 0.
	foodBusiness := self foodBusiness.
	anotherFoodBusiness := self anotherFoodBusiness.
	foodBusinessManagementSystem add: foodBusiness.
	foodBusinessManagementSystem update: foodBusiness with: anotherFoodBusiness.
	self assert: foodBusinessManagementSystem count equals: 1.
	foodBusinessFromDatabase := foodBusinessManagementSystem getAll  anyOne.
	self
		assert: anotherFoodBusiness serviceTime equals: foodBusinessFromDatabase serviceTime;
		assert: anotherFoodBusiness deliveryLocation equals: foodBusinessFromDatabase deliveryLocation;
		assert: anotherFoodBusiness mapLocation equals: foodBusinessFromDatabase mapLocation;
		assert: anotherFoodBusiness description equals: foodBusinessFromDatabase description;
		assert: anotherFoodBusiness webSite equals: foodBusinessFromDatabase webSite