initialization
testAddCustomer
	| customer customerFromDatabase |
	self assert: persistenceSystem customersCount equals: 0.
	customer := Customer
		named: 'Hernan Coronel'
		identifiedBy: '27388419348'
		with: 'hernan.coronel@yahoo.com'
		and: '01134908754'
		locatedIn: 'direccion'.
	persistenceSystem addCustomer: customer.
	self assert: persistenceSystem customersCount equals: 1.
	customerFromDatabase := persistenceSystem allCustomers anyOne.
	self assert: customerFromDatabase equals: customer