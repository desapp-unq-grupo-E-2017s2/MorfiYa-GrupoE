Configuring
creationDescriptorBlock
	^ [ :aDescriptor | 
	| table |
	table := self table.
	aDescriptor table: table.
	(aDescriptor newMapping: DirectMapping) from: #id to: (table fieldNamed: 'id').
	(aDescriptor newMapping: DirectMapping) from: #name to: (table fieldNamed: 'name').
	(aDescriptor newMapping: DirectMapping) from: #description to: (table fieldNamed: 'description').
	(aDescriptor newMapping: DirectMapping) from: #deliveryValue to: (table fieldNamed: 'deliveryValue').
	(aDescriptor newMapping: OneToManyMapping)
		attributeName: #validDatePeriod;
		referenceClass: WorkingHoursTime;
		collectionType: OrderedCollection;
		orderBy: #id;
		beExclusive.
	(aDescriptor newMapping: DirectMapping) from: #deliveryTimeStart to: (table fieldNamed: 'deliveryTimeStart').
	(aDescriptor newMapping: DirectMapping) from: #deliveryTimeEnd to: (table fieldNamed: 'deliveryTimeEnd').
	(aDescriptor newMapping: DirectMapping) from: #deliveryTimeAverage to: (table fieldNamed: 'deliveryTimeAverage').
	(aDescriptor newMapping: DirectMapping) from: #price to: (table fieldNamed: 'price').
	(aDescriptor newMapping: DirectMapping) from: #maximumSaleQuantity to: (table fieldNamed: 'maximumSaleQuantity') ]