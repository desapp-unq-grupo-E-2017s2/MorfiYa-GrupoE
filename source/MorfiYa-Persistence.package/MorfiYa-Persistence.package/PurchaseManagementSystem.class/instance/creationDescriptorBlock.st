Accessing
creationDescriptorBlock

	^ [ :aDescriptor | 
	| table |
	table := self table.
	aDescriptor table: table.
	
	(aDescriptor newMapping: DirectMapping) from: #id to: (table fieldNamed: 'id').
	(aDescriptor newMapping: DirectMapping) from: #deliveryType to: (table fieldNamed: 'deliveryType').
	(aDescriptor newMapping: DirectMapping) from: #deliveryDate to: (table fieldNamed: 'deliveryDate').
	(aDescriptor newMapping: DirectMapping) from: #deliveryTime to: (table fieldNamed: 'deliveryTime').
	(aDescriptor newMapping: OneToOneMapping)
		attributeName: #customer;
		referenceClass: User;
		join: (Join from: (table fieldNamed: 'customer') to: ((self relatedObjectTableNamed: 'USER') fieldNamed: 'id')).
	(aDescriptor newMapping: DirectMapping) from: #menus to: (table fieldNamed: 'menus').
	(aDescriptor newMapping: OneToOneMapping)
		attributeName: #vendor;
		referenceClass: User;
		join: (Join from: (table fieldNamed: 'vendor') to: ((self relatedObjectTableNamed: 'USER') fieldNamed: 'id')) ]