Tests
testUpdateCustomer
	| customer anotherCustomer customerFromDatabase |
	self assert: customerPersistenceSystem customersCount equals: 0.
	customer := Customer
		named: 'Hernan Coronel'
		identifiedBy: '27388419348'
		with: 'hernan.coronel@yahoo.com'
		and: '01134908754'
		locatedIn: 'direccion'.
	anotherCustomer := Customer
		named: 'Hernan Coronel2'
		identifiedBy: '27388419348'
		with: 'hernan.coronel@hotmail.com'
		and: '01134908754'
		locatedIn: 'direccion2'.
	customerPersistenceSystem addCustomer: customer.
	customerPersistenceSystem updateCustomer: customer with: anotherCustomer.
	self assert: customerPersistenceSystem customersCount equals: 1.
	customerFromDatabase := customerPersistenceSystem allCustomers anyOne.
	self
		assert: customerFromDatabase email equals: anotherCustomer email;
		assert: customerFromDatabase identifier equals: anotherCustomer identifier;
		assert: customerFromDatabase location equals: anotherCustomer location;
		assert: customerFromDatabase money equals: anotherCustomer money;
		assert: customerFromDatabase telephone equals: anotherCustomer telephone