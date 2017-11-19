Querying
addFoodMenuFrom: aJsonString

	| jsonfoodMenu foodMenu result |
	
	jsonfoodMenu := NeoJSONObject fromString: aJsonString.
	
	^ [ foodMenu := FoodMenu fromJson: jsonfoodMenu.
	result := foodMenuManagementSystem addFoodMenu: foodMenu.
	TeaResponse ok
		body: result;
		headers: self normalHeaders ]
		on: Error
		do: [ :error | self requestExecutionFailedOn: error ]