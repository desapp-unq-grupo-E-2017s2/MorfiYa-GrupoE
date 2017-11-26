Instance Creation
adressedWith: anAddress locatedIn: aLocation withEmail: emailAddress password: aPassword andPhoneNumber: aPhoneNumber

	self isValidEmailFor: emailAddress.
	self assertsIsValidPhoneNumber: aPhoneNumber.

	^ self new
		initializeAdressedWith: anAddress
		locatedIn: aLocation
		withEmail: emailAddress
		password: aPassword
		andPhoneNumber: aPhoneNumber