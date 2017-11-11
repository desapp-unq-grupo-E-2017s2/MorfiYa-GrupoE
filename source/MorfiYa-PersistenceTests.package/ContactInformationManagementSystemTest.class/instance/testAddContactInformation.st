Tests
testAddContactInformation

	| contactInformation contactInformationFromDatabase |
	self assert: contactInformationManagementSystem contactInformationsCount equals: 0.
	contactInformation := self contactInformation.
	contactInformationManagementSystem addContactInformation: contactInformation.
	self assert: contactInformationManagementSystem contactInformationsCount equals: 1.
	contactInformationFromDatabase := contactInformationManagementSystem
		allContactInformations anyOne.
	self assert: contactInformationFromDatabase equals: contactInformationFromDatabase