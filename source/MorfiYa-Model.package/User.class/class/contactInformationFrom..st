as yet unclassified
contactInformationFrom: aNeoJson

	^ (ContactInformation
		adressedWith: (aNeoJson at: #address)
		locatedIn: (aNeoJson at: #location)
		withEmail: (aNeoJson at: #email)
		andPhoneNumber: (aNeoJson at: #phone))
		id: (aNeoJson at: #id);
		yourself