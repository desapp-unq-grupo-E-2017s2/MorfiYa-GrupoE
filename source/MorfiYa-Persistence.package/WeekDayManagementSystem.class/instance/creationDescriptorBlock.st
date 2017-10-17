Configuring
creationDescriptorBlock

	^ [ :aDescriptor | 

	| table |
	table := self table.
	aDescriptor table: table.
	
	(aDescriptor newMapping: DirectMapping) from: #id to: (table fieldNamed: 'id').
	(aDescriptor newMapping: DirectMapping) from: #description to: (table fieldNamed: 'description') ]