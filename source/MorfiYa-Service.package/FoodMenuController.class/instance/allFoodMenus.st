Querying
allFoodMenus

	^ TeaResponse ok
		body: foodMenuManagementSystem allFoodMenus;
		headers: self normalHeaders