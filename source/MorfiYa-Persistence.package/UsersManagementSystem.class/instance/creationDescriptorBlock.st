Configuring
creationDescriptorBlock
	^ [ :aDescriptor | 
	| table |
	table := self table.
	aDescriptor table: table.
	(aDescriptor newMapping: DirectMapping) from: #id to: (table fieldNamed: 'id').
	(aDescriptor newMapping: DirectMapping) from: #name to: (table fieldNamed: 'name').
	(aDescriptor newMapping: DirectMapping)
		from: #lastName
		to: (table fieldNamed: 'lastName').
	(aDescriptor newMapping: DirectMapping) from: #cuit to: (table fieldNamed: 'cuit').
	(aDescriptor newMapping: DirectMapping) from: #money to: (table fieldNamed: 'money').
	(aDescriptor newMapping: OneToOneMapping)
		attributeName: #contactInformation;
		referenceClass: ContactInformation;
		join:
			(Join
				from: (table fieldNamed: 'id')
				to: ((self relatedObjectTableNamed: 'CONTACT_INFORMATION') fieldNamed: 'user_id'));
		beExclusive ]