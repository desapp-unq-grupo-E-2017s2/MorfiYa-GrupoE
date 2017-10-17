Configuring
creationDescriptorBlock

	^ [ :aDescriptor | 
	| table |
	table := self table.
	aDescriptor table: table.
	(aDescriptor newMapping: DirectMapping) from: #id to: (table fieldNamed: 'id').
	(aDescriptor newMapping: DirectMapping) from: #address to: (table fieldName: 'address').
	(aDescriptor newMapping: DirectMapping) from: #locality to: (table fieldName: 'locality').
	(aDescriptor newMapping: DirectMapping) from: #phoneNumber to: (table fieldName: 'phoneNumber').
	(aDescriptor newMapping: DirectMapping) from: #email to: (table fieldName: 'email').
	]