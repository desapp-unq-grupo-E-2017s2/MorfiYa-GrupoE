FoodBusiness-Query
updateFoodBusiness: aFoodBusiness with: anUpdatedFoodBusiness

	self glorpSession inUnitOfWorkDo: [ aFoodBusiness synchronizeWith: anUpdatedFoodBusiness .
		self glorpSession register: aFoodBusiness  ]