Configuring
creationModelBlock

	^ [ :aModel | 
	aModel
		newAttributeNamed: #id;
		newAttributeNamed: #address;
		newAttributeNamed: #locality;
		newAttributeNamed: #phoneNumber;
		newAttributeNamed: #email;
		newAttributeNamed: #password ]