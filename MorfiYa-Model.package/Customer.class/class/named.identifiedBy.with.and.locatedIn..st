instance creation
named: aFullName identifiedBy: aTaxpayerUniqueKey with: anEmailAddress and: aTelephoneNumber locatedIn: aLocation 

	self assertValidTaxpayerKey: aTaxpayerUniqueKey.	

	^self new initializeNamed: aFullName identifiedBy: aTaxpayerUniqueKey with: anEmailAddress and: aTelephoneNumber locatedIn: aLocation 