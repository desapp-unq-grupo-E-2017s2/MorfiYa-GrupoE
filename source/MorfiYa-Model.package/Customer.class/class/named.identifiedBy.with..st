instance creation
named: aFullName identifiedBy: aTaxpayerUniqueKey with: aContactInformation
	
	^ self new
		initializeNamed: aFullName
		identifiedBy: aTaxpayerUniqueKey
		with: aContactInformation 