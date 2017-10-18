Configuring
creationDescriptorBlock

	^ [ :aDescriptor | 
	| table |
	table := self table.
	aDescriptor table: table.
	(aDescriptor newMapping: DirectMapping) from: #id to: (table fieldNamed: 'id').
	self weekDayMappingFor: aDescriptor.
	(aDescriptor newMapping: DirectMapping ) from: #openingTime to: (table fieldNamed: 'openingTime').
	(aDescriptor newMapping: DirectMapping ) from: #closingTime to: (table fieldNamed: 'closingTime')]