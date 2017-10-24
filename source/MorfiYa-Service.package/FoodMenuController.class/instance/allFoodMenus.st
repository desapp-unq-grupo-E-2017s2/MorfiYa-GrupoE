Querying
allFoodMenus

	^ TeaResponse ok
		body: foodMenuManagementSystem allFodMenues;
		headers: self normalHeaders