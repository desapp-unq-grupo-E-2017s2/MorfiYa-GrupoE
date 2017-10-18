Instance Creation
named: aName withLogo: aLogo mapLocation: aPoint described: aDescription webSite: aWebsite serviceTime: aCollection deliveryLocation: anotherLocation with: aContactInformation

	self assertsIsValidDescription: aDescription.
	^ self new
		initializeNamed: aName
		withLogo: aLogo
		mapLocation: aPoint
		described: aDescription
		webSite: aWebsite
		serviceTime: aCollection
		deliveryLocation: anotherLocation
		with: aContactInformation