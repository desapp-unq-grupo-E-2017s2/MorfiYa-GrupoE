Configuring
creationDescriptorBlock
	^ [ :aDescriptor | 
	| table |
	table := self table.
	aDescriptor table: table.
	(aDescriptor newMapping: DirectMapping) from: #id to: (table fieldNamed: #id).
	(aDescriptor newMapping: DirectMapping) from: #name to: (table fieldNamed: #name).
	(aDescriptor newMapping: DirectMapping) from: #logo to: (table fieldNamed: #logo).
	(aDescriptor newMapping: DirectMapping) from: #mapLocation to: (table fieldNamed: #mapLocation).
	(aDescriptor newMapping: DirectMapping) from: #description to: (table fieldNamed: #description).
	(aDescriptor newMapping: DirectMapping) from: #webSite to: (table fieldNamed: #webSite).
	(aDescriptor newMapping: OneToManyMapping)
		attributeName: #serviceTime;
		referenceClass: WorkingHoursTime;
		collectionType: OrderedCollection;
		orderBy: #id;
		join: (Join from: (table fieldNamed: 'id') to: ((self relatedObjectTableNamed: #WORKING_HOUR) fieldNamed: 'foodBusinessId'));
		beExclusive.
	(aDescriptor newMapping: DirectMapping) from: #deliveryLocation to: (table fieldNamed: #deliveryLocation).
	(aDescriptor newMapping: DirectMapping) from: #scores to: (table fieldNamed: #scores) ]