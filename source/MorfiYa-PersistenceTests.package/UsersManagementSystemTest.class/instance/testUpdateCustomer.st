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
		assert: customerFromDatabase email equals: anotherCustomer email;
		assert: customerFromDatabase identifier equals: anotherCustomer identifier;
		assert: customerFromDatabase location equals: anotherCustomer location;
		assert: customerFromDatabase telephone equals: anotherCustomer telephone