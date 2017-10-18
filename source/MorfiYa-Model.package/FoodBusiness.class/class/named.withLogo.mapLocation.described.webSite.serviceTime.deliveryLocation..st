Instance Creation
named: aName withLogo: aLogo mapLocation: aPoint described: aDescription webSite: aWebsite serviceTime: aCollection deliveryLocation: anotherLocation 

	self assertsIsValidDescription: aDescription.
	^ self new
		initializeNamed: aName
		withLogo: aLogo
		mapLocation: aPoint
		described: aDescription
		webSite: aWebsite
		serviceTime: aCollection
		deliveryLocation: anotherLocation
