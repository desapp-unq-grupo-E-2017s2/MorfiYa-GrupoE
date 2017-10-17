accessing
menus: aDictionary deliveryType: aDeliveryType deliveryDate: aDate deliveryTime: aTime customer: aCustomer
	
	self assertIsValidDeliveryDate: aDate.
	self assertNotEmptyPurchase: aDictionary.
	
	^self new initializeMenus: aDictionary deliveryType: aDeliveryType deliveryDate: aDate deliverTime: aTime customer: aCustomer.