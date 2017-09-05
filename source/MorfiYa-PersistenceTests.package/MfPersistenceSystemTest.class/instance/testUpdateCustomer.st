initialization
testUpdateCustomer
	| customer anotherCustomer customerFromDatabase |
	self assert: persistenceSystem customersCount equals: 0.
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
	persistenceSystem addCustomer: customer.
	persistenceSystem updateCustomer: customer with: anotherCustomer.
	self assert: persistenceSystem customersCount equals: 1.
	customerFromDatabase := persistenceSystem allCustomers anyOne.
	self
		assert: customerFromDatabase email equals: anotherCustomer email;
		assert: customerFromDatabase identifier equals: anotherCustomer identifier;
		assert: customerFromDatabase location equals: anotherCustomer location;
		assert: customerFromDatabase money equals: anotherCustomer money;
		assert: customerFromDatabase telephone equals: anotherCustomer telephone