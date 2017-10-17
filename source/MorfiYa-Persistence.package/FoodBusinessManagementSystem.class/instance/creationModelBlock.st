Configuring
creationModelBlock

	^ [ :aModel | 
		
	aModel
		newAttributeNamed: #id;
		newAttributeNamed: #name;
		newAttributeNamed: #logo;
		newAttributeNamed: #mapLocation;
		newAttributeNamed: #description;
		newAttributeNamed: #webSite;
		newAttributeNamed: #serviceTime collectionOf: WorkingHoursTime ;
		newAttributeNamed: #deliveryLocation;
		newAttributeNamed: #contactInformation;
		newAttributeNamed: #scores ]