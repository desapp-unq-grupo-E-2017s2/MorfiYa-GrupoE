FoodBusiness-Query
removeFoodBusiness: aFoodBusiness

	self glorpSession inUnitOfWorkDo: [ self glorpSession delete: aFoodBusiness ]