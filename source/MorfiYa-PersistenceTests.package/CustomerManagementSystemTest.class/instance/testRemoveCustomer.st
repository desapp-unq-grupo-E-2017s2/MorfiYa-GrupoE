Tests
testRemoveCustomer
	| customer |
	self assert: customerPersistenceSystem customersCount equals: 0.
	customer := Customer
		named: 'Hernan Coronel'
		identifiedBy: '27388419348'
		with: 'hernan.coronel@yahoo.com'
		and: '01134908754'
		locatedIn: 'direccion'.
	customerPersistenceSystem addCustomer: customer.
	self assert: customerPersistenceSystem customersCount equals: 1.
	customerPersistenceSystem removeCustomer: customer.
	self assert: customerPersistenceSystem customersCount equals: 0