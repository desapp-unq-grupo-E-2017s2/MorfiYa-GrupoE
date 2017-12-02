Tests
testUpdateContactInformation
	| contactInformation contactInformationFromDatabase anotherContactInformation |
	self assert: contactInformationManagementSystem count equals: 0.
	contactInformation := self contactInformation.
	anotherContactInformation := self anotherContactInformation.
	contactInformationManagementSystem add: contactInformation.
	contactInformationManagementSystem
		update: contactInformation
		with: anotherContactInformation.
	self assert: contactInformationManagementSystem count equals: 1.
	contactInformationFromDatabase := contactInformationManagementSystem
		getAll anyOne .
	self
		assert: contactInformationFromDatabase address
			equals: anotherContactInformation address;
		assert: contactInformationFromDatabase email equals: anotherContactInformation email;
		assert: contactInformationFromDatabase locality
			equals: anotherContactInformation locality;
		assert: contactInformationFromDatabase phoneNumber
			equals: anotherContactInformation phoneNumber