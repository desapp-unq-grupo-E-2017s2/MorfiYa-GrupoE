Tests
testRemoveCustomer
	| customer |
	self assert: usersManagementSystem count equals: 0.
	customer := self user.
	usersManagementSystem add: customer.
	self assert: usersManagementSystem count equals: 1.
	usersManagementSystem remove: customer.
	self assert: usersManagementSystem count equals: 0