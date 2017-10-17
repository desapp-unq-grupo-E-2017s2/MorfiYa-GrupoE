Instance Creation
adressedWith: anAddress locatedIn: aLocation withEmail: emailAddress andPhoneNumber: aPhoneNumber

	self isValidEmailFor: emailAddress.
	self assertsIsValidPhoneNumber: aPhoneNumber.

	^ self new
		initializeAdressedWith: anAddress
		locatedIn: aLocation
		withEmail: emailAddress
		andPhoneNumber: aPhoneNumber