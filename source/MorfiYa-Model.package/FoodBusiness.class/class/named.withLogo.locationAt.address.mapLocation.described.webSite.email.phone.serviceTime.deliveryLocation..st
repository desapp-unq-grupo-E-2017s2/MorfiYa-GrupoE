Instance Creation
named: aName withLogo: aLogo locationAt: aLocation address: anAddress mapLocation: aPoint described: aDescription webSite: aWebsite email: anEmail phone: aPhoneNumber serviceTime: aCollection deliveryLocation: anotherLocation 
self assertsOverDescription: aDescription .
self assertsOverPhoneNumber: aPhoneNumber.
	^self new initializeNamed: aName withLogo: aLogo locationAt: aLocation address: anAddress mapLocation: aPoint described: aDescription webSite: aWebsite email: anEmail phone: aPhoneNumber serviceTime: aCollection deliveryLocation: anotherLocation 