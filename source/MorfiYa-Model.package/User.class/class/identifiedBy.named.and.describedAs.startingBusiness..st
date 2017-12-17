Instance Creation
identifiedBy: aCuit named: aName and: aLastName describedAs: aContactInformation startingBusiness: aFoodBusiness
	"self validateTaxPayierIdentifier: aCuit."
	^ self new
		initializeIdentifiedBy: aCuit
		named: aName
		and: aLastName
		describedAs: aContactInformation
		startingBusiness: aFoodBusiness