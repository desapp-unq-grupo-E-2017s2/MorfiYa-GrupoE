Configuring
creationDescriptorBlock
	^ [ :aDescriptor | 
	| table |
	table := self table.
	aDescriptor table: table.
	(aDescriptor newMapping: DirectMapping) from: #id to: (table fieldNamed: 'id').
	(aDescriptor newMapping: DirectMapping) from: #name to: (table fieldNamed: 'name').
	(aDescriptor newMapping: DirectMapping)
		from: #description
		to: (table fieldNamed: 'description').
	(aDescriptor newMapping: OneToManyMapping)
		attributeName: #validDatePeriod;
		referenceClass: WorkingHoursTime;
		collectionType: OrderedCollection;
		orderBy: #id;
		join:
			(Join
				from: (table fieldNamed: 'id')
				to: ((self relatedObjectTableNamed: #WORKING_HOUR) fieldNamed: 'foodMenuId'));
		beExclusive.
	(aDescriptor newMapping: DirectMapping)
		from: #deliveryTimeStart
		to: (table fieldNamed: 'deliveryTimeStart').
	(aDescriptor newMapping: DirectMapping)
		from: #deliveryTimeEnd
		to: (table fieldNamed: 'deliveryTimeEnd').
	(aDescriptor newMapping: DirectMapping)
		from: #deliveryTimeAverage
		to: (table fieldNamed: 'deliveryTimeAverage').
	(aDescriptor newMapping: DirectMapping) from: #price to: (table fieldNamed: 'price').
	(aDescriptor newMapping: DirectMapping)
		from: #maximumSaleQuantity
		to: (table fieldNamed: 'maximumSaleQuantity') ]