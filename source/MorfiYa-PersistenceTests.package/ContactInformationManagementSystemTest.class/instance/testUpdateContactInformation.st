Tests
testUpdateContactInformation
	| contactInformation contactInformationFromDatabase anotherContactInformation |
	self assert: contactInformationManagementSystem contactInformationsCount equals: 0.
	contactInformation := self contactInformation.
	anotherContactInformation := self anotherContactInformation.
	contactInformationManagementSystem addContactInformation: contactInformation.
	contactInformationManagementSystem
		updateContactInformation: contactInformation
		with: anotherContactInformation.
	self assert: contactInformationManagementSystem contactInformationsCount equals: 1.
	contactInformationFromDatabase := contactInformationManagementSystem
		allContactInformations anyOne.
	self
		assert: contactInformationFromDatabase address
			equals: anotherContactInformation address;
		assert: contactInformationFromDatabase email equals: anotherContactInformation email;
		assert: contactInformationFromDatabase locality
			equals: anotherContactInformation locality;
		assert: contactInformationFromDatabase phoneNumber
			equals: anotherContactInformation phoneNumber