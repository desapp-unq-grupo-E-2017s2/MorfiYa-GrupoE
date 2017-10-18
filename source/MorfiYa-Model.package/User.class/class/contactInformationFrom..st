as yet unclassified
contactInformationFrom: aNeoJson

	^ (ContactInformation
		adressedWith: (aNeoJson at: #address)
		locatedIn: (aNeoJson at: #locality)
		withEmail: (aNeoJson at: #email)
		andPhoneNumber: (aNeoJson at: #phoneNumber))
		id: (aNeoJson at: #id);
		yourself