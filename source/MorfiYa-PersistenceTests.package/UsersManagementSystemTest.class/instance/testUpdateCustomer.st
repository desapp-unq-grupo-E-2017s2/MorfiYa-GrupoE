Tests
testUpdateCustomer
	| customer anotherCustomer customerFromDatabase |
	self assert: usersManagementSystem usersCount equals: 0.
	customer := self user.
	anotherCustomer := self anotherUser.
	usersManagementSystem addUser: customer.
	usersManagementSystem updateUser: customer with: anotherCustomer.
	self assert: usersManagementSystem usersCount equals: 1.
	customerFromDatabase := usersManagementSystem allUsers anyOne.
	self
		assert: customerFromDatabase name equals: anotherCustomer name;
		assert: customerFromDatabase lastName equals: anotherCustomer lastName;
		assert: customerFromDatabase money equals: anotherCustomer money;
		assert: customerFromDatabase cuit equals: anotherCustomer cuit;
		assert: customerFromDatabase contactInformation equals: anotherCustomer contactInformation