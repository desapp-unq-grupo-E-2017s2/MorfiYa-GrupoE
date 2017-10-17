Tests
testUpdateCustomer
	| customer anotherCustomer customerFromDatabase |
	self assert: customerPersistenceSystem customersCount equals: 0.
	customer := self customer.
	anotherCustomer := self anotherCustomer.
	customerPersistenceSystem addCustomer: customer.
	customerPersistenceSystem updateCustomer: customer with: anotherCustomer.
	self assert: customerPersistenceSystem customersCount equals: 1.
	customerFromDatabase := customerPersistenceSystem allCustomers anyOne.
	self
		assert: customerFromDatabase email equals: anotherCustomer email;
		assert: customerFromDatabase identifier equals: anotherCustomer identifier;
		assert: customerFromDatabase location equals: anotherCustomer location;
		assert: customerFromDatabase telephone equals: anotherCustomer telephone