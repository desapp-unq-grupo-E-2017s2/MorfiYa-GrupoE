Tests
testRemoveCustomer
	| customer |
	self assert: usersManagementSystem usersCount equals: 0.
	customer := self user.
	usersManagementSystem addUser: customer.
	self assert: usersManagementSystem usersCount equals: 1.
	usersManagementSystem removeUser: customer.
	self assert: usersManagementSystem usersCount equals: 0