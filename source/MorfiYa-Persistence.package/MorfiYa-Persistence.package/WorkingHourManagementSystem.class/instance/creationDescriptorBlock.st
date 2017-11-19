Configuring
creationDescriptorBlock
	^ [ :aDescriptor | 
	| table |
	table := self table.
	aDescriptor table: table.
	(aDescriptor newMapping: DirectMapping) from: #id to: (table fieldNamed: 'id').
	(aDescriptor newMapping: OneToOneMapping)
		attributeName: #workingDay;
		referenceClass: WeekDay;
		join: (Join from: (table fieldNamed: 'id') to: ((self relatedObjectTableNamed: #WEEK_DAY) fieldNamed: 'workingHoursId'));
		beExclusive.
	(aDescriptor newMapping: DirectMapping) from: #openingTime to: (table fieldNamed: 'openingTime').
	(aDescriptor newMapping: DirectMapping) from: #closingTime to: (table fieldNamed: 'closingTime') ]