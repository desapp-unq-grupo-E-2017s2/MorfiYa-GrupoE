Tests
testAddCustomer

	| customer customerFromDatabase |
	
	self assert: usersManagementSystem count equals: 0.
	
	customer := self user.
	usersManagementSystem add: customer.
	self assert: usersManagementSystem count equals: 1.
	
	customerFromDatabase := usersManagementSystem getAll  anyOne.
	self assert: customerFromDatabase equals: customer