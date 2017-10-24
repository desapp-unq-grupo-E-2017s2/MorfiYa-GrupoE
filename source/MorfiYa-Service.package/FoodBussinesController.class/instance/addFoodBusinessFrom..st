adding
addFoodBusinessFrom: aJsonStringFoodBusiness

	| jsonFoodbusiness foodBusiness result |
	
	jsonFoodbusiness := NeoJSONObject fromString: aJsonStringFoodBusiness.
	foodBusiness := FoodBusiness fromJson: jsonFoodbusiness.
	result := foodBussinesManagementSystem addFoodBusiness: foodBusiness.
	
	^ TeaResponse ok
		body: result;
		headers: self normalHeaders