Accessing
creationModelBlock

	^[:aModel | aModel 
		newAttributeNamed: #id;
		newAttributeNamed: #quantity;
		newAttributeNamed: #deliveryType;
		newAttributeNamed: #deliveryDate;
		newAttributeNamed: #deliveryTime;
		newAttributeNamed: #customer type: User;
		newAttributeNamed: #menus type: OrderedCollection;
		newAttributeNamed: #vendor type: User]