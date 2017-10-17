Configuring
creationModelBlock

	^ [ :aModel | 
	aModel
		newAttributeNamed: #id;
		newAttributeNamed: #workingDay;
		newAttributeNamed: #openingTime;
		newAttributeNamed: #closingTime ]