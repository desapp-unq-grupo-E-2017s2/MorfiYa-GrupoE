Configuring
creationModelBlock
	^ [ :aModel | 
	aModel
		newAttributeNamed: #id;
		newAttributeNamed: #name;
		newAttributeNamed: #lastName;
		newAttributeNamed: #cuit;
		newAttributeNamed: #contactInformation type: ContactInformation ;
		newAttributeNamed: #money ]