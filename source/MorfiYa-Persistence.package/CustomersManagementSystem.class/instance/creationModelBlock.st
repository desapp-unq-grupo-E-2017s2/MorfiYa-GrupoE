Configuring
creationModelBlock
	^ [ :aModel | 
	aModel
		newAttributeNamed: #id;
		newAttributeNamed: #name;
		newAttributeNamed: #cuit;
		newAttributeNamed: #emailAddress;
		newAttributeNamed: #telephoneNumer;
		newAttributeNamed: #location;
		newAttributeNamed: #money ]