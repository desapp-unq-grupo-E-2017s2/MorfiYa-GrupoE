Tests
testRemoveCustomer
	| customer |
	self assert: customerPersistenceSystem customersCount equals: 0.
	customer := self customer.
	customerPersistenceSystem addCustomer: customer.
	self assert: customerPersistenceSystem customersCount equals: 1.
	customerPersistenceSystem removeCustomer: customer.
	self assert: customerPersistenceSystem customersCount equals: 0