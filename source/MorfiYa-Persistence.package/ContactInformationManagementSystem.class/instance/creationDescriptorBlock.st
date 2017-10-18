Configuring
creationDescriptorBlock

	^ [ :aDescriptor | 
	| table |
	table := self table.
	aDescriptor table: table.
	(aDescriptor newMapping: DirectMapping) from: #id to: (table fieldNamed: 'id').
	(aDescriptor newMapping: DirectMapping) from: #address to: (table fieldNamed: 'address').
	(aDescriptor newMapping: DirectMapping) from: #locality to: (table fieldNamed: 'locality').
	(aDescriptor newMapping: DirectMapping) from: #phoneNumber to: (table fieldNamed: 'phoneNumber').
	(aDescriptor newMapping: DirectMapping) from: #email to: (table fieldNamed: 'email').
	]