FoodBusiness-Query
registerFoodBusiness: aFoodBusiness

	self glorpSession inUnitOfWorkDo: [ self glorpSession register: aFoodBusiness ]