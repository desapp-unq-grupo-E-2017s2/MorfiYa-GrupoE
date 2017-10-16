instance creation
named: aFullName identifiedBy: aTaxpayerUniqueKey with: aContactInformation

	self assertValidTaxpayerKey: aTaxpayerUniqueKey.
	^ self new
		initializeNamed: aFullName
		identifiedBy: aTaxpayerUniqueKey
		with: aContactInformation 