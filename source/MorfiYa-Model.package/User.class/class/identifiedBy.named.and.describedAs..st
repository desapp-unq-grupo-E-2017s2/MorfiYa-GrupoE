Instance Creation
identifiedBy: aCuit named: aName and: aLastName describedAs: aClientInformation
	self validateTaxPayierIdentifier: aCuit.
	^ self new
		initializeIdentifiedBy: aCuit
		named: aName
		and: aLastName
		describedAs: aClientInformation