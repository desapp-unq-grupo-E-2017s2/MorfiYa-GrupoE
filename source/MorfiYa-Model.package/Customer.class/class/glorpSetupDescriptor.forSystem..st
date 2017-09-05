instance creation
glorpSetupDescriptor: aDescriptor forSystem: aDescriptorSystem
	| table |
	table := aDescriptorSystem tableNamed: 'customer'.
	aDescriptor table: table.
	(aDescriptor newMapping: DirectMapping) from: #id to: (table fieldNamed: 'id').
	(aDescriptor newMapping: DirectMapping) from: #name to: (table fieldNamed: 'name').
	(aDescriptor newMapping: DirectMapping) from: #cuit to: (table fieldNamed: 'cuit').
	(aDescriptor newMapping: DirectMapping)
		from: #emailAddress
		to: (table fieldNamed: 'emailAddress').
	(aDescriptor newMapping: DirectMapping)
		from: #telephoneNumer
		to: (table fieldNamed: 'telephoneNumer').
	(aDescriptor newMapping: DirectMapping)
		from: #location
		to: (table fieldNamed: 'location').
	(aDescriptor newMapping: DirectMapping) from: #money to: (table fieldNamed: 'money')