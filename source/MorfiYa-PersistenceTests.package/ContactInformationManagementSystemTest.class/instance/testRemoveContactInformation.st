Tests
testRemoveContactInformation
	| contactInformation  |
	self assert: contactInformationManagementSystem count equals: 0.
	contactInformation := self contactInformation.
	contactInformationManagementSystem add: contactInformation.
	self assert: contactInformationManagementSystem count equals: 1.
	contactInformationManagementSystem remove: contactInformation.
	self assert: contactInformationManagementSystem contactInformationsCount equals: 0