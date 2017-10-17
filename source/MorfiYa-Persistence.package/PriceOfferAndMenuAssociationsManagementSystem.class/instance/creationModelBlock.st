Configuring
creationModelBlock
	^ [ :aModel | 
	aModel
		newAttributeNamed: #id;
		newAttributeNamed: #foodMenu type: FoodMenu;
		newAttributeNamed: #priceOffer type: PriceOffer ]