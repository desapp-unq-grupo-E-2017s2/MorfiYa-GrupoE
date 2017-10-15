Configuring
creationModelBlock
	^ [ :aModel | 
	aModel
		newAttributeNamed: #id;
		newAttributeNamed: #name;
		newAttributeNamed: #description;
	"	newAttributeNamed: #categories;"
		newAttributeNamed: #deliveryValue;
"		newAttributeNamed: #validDatePeriod;"
"		newAttributeNamed: #deliveryTimePeriod;"
		newAttributeNamed: #deliveryTimeAverage;
		newAttributeNamed: #price;
		newAttributeNamed: #minimumQuantity;
		newAttributeNamed: #minimumQuantityPrice;
		newAttributeNamed: #minimumQuantity2;
		newAttributeNamed: #minimumQuantityPrice2;
		newAttributeNamed: #maximumSaleQuantity.
		]