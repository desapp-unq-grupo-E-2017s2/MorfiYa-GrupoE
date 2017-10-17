Configuring
creationModelBlock
	^ [ :aModel | 
	aModel
		newAttributeNamed: #id;
		newAttributeNamed: #name;
		newAttributeNamed: #description;
		newAttributeNamed: #deliveryValue;
		newAttributeNamed: #validDatePeriod collectionOf: WorkingHoursTime ;
		newAttributeNamed: #deliveryTimeStart;
		newAttributeNamed: #deliveryTimeEnd;
		newAttributeNamed: #deliveryTimeAverage;
		newAttributeNamed: #price;
		newAttributeNamed: #maximumSaleQuantity ]