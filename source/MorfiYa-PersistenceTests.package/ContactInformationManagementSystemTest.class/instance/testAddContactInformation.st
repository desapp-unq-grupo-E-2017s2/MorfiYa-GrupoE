Tests
testAddContactInformation

	| contactInformation contactInformationFromDatabase |
	self assert: contactInformationManagementSystem count equals: 0.
	contactInformation := self contactInformation.
	contactInformationManagementSystem add: contactInformation.
	self assert: contactInformationManagementSystem count equals: 1.
	contactInformationFromDatabase := contactInformationManagementSystem
		getAll  anyOne.
	self assert: contactInformationFromDatabase equals: contactInformationFromDatabase