Tests
testAddCustomer

	| customer customerFromDatabase |
	
	self assert: usersManagementSystem usersCount equals: 0.
	
	customer := self user.
	usersManagementSystem addUser: customer.
	self assert: usersManagementSystem usersCount equals: 1.
	
	customerFromDatabase := usersManagementSystem allUsers anyOne.
	self assert: customerFromDatabase equals: customer