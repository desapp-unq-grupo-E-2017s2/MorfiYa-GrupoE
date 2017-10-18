Tests
testRemoveContactInformation
	| contactInformation  |
	self assert: contactInformationManagementSystem contactInformationsCount equals: 0.
	contactInformation := self contactInformation.
	contactInformationManagementSystem addContactInformation: contactInformation.
	self assert: contactInformationManagementSystem contactInformationsCount equals: 1.
	contactInformationManagementSystem removeContactInformation: contactInformation.
	self assert: contactInformationManagementSystem contactInformationsCount equals: 0