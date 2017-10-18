Tests
testUpdateFoodBusiness

	| foodBusiness foodBusinessFromDatabase anotherFoodBusiness |
	self assert: foodBusinessManagementSystem foodBusinessCount equals: 0.
	foodBusiness := self foodBusiness.
	anotherFoodBusiness := self anotherFoodBusiness.
	foodBusinessManagementSystem addFoodBusiness: foodBusiness.
	foodBusinessManagementSystem updateFoodBusiness: foodBusiness with: anotherFoodBusiness.
	self assert: foodBusinessManagementSystem foodBusinessCount equals: 1.
	foodBusinessFromDatabase := foodBusinessManagementSystem allFoodBusiness anyOne.
	self
		assert: anotherFoodBusiness serviceTime equals: foodBusinessFromDatabase serviceTime;
		assert: anotherFoodBusiness deliveryLocation equals: foodBusinessFromDatabase deliveryLocation;
		assert: anotherFoodBusiness mapLocation equals: foodBusinessFromDatabase mapLocation;
		assert: anotherFoodBusiness description equals: foodBusinessFromDatabase description;
		assert: anotherFoodBusiness webSite equals: foodBusinessFromDatabase webSite