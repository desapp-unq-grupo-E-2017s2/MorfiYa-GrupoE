Tests
testAddCustomer
	| customer customerFromDatabase |
	self assert: customerPersistenceSystem customersCount equals: 0.
	customer := self customer.
	customerPersistenceSystem addCustomer: customer.
	self assert: customerPersistenceSystem customersCount equals: 1.
	customerFromDatabase := customerPersistenceSystem allCustomers anyOne.
	self assert: customerFromDatabase equals: customer