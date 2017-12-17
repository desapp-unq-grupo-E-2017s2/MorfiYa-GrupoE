private
userFromGoogleProfile: aJsonGoogleProfile
	^ User
		identifiedBy: nil
		named: (aJsonGoogleProfile at: #given_name)
		and: (aJsonGoogleProfile at: #family_name)
		describedAs:
			(ContactInformation
				adressedWith: nil
				locatedIn: nil
				withEmail: (aJsonGoogleProfile at: #nickname) , '@gmail.com'
				andPhoneNumber: nil)