Configuring
creationModelBlock

	^ [ :aModel | 
	aModel
		newAttributeNamed: #id;
		newAttributeNamed: #workingDay type: WeekDay ;
		newAttributeNamed: #openingTime;
		newAttributeNamed: #closingTime ]