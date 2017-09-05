Customer-Config
descriptorForCustomer: description
	| table |
	table := self tableNamed: 'customer'.
	description table: table.
	(description newMapping: DirectMapping) from: #id to: (table fieldNamed: 'id').
	(description newMapping: DirectMapping) from: #name to: (table fieldNamed: 'name').
	(description newMapping: DirectMapping) from: #cuit to: (table fieldNamed: 'cuit').
	(description newMapping: DirectMapping)
		from: #emailAddress
		to: (table fieldNamed: 'emailAddress').
	(description newMapping: DirectMapping)
		from: #telephoneNumer
		to: (table fieldNamed: 'telephoneNumer').
	(description newMapping: DirectMapping)
		from: #location
		to: (table fieldNamed: 'location').
	(description newMapping: DirectMapping) from: #money to: (table fieldNamed: 'money')