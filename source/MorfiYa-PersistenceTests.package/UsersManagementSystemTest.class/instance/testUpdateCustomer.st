Tests
testUpdateCustomer
	| customer anotherCustomer customerFromDatabase |
	self assert: usersManagementSystem count equals: 0.
	customer := self user.
	anotherCustomer := self anotherUser.
	usersManagementSystem add: customer.
	usersManagementSystem update: customer with: anotherCustomer.
	self assert: usersManagementSystem count equals: 1.
	customerFromDatabase := usersManagementSystem getAll anyOne.
	self
		assert: customerFromDatabase name equals: anotherCustomer name;
		assert: customerFromDatabase lastName equals: anotherCustomer lastName;
		assert: customerFromDatabase money equals: anotherCustomer money;
		assert: customerFromDatabase cuit equals: anotherCustomer cuit;
		assert: customerFromDatabase contactInformation equals: anotherCustomer contactInformation