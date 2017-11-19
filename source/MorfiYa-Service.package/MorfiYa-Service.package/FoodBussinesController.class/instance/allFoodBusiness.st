Querying
allFoodBusiness

	^ TeaResponse ok
		body: foodBussinesManagementSystem allFoodBusiness;
		headers: self normalHeaders