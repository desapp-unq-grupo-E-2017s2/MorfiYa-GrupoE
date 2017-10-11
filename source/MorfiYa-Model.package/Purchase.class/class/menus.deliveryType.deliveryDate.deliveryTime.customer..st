accessing
menus: aDictionary deliveryType: aDeliveryType deliveryDate: aDate deliveryTime: aTime customer: aCustomer
	
	self assertOverDeliveryDate: aDate.
	self assertOverMenus: aDictionary.
	
	^self new initializeMenus: aDictionary deliveryType: aDeliveryType deliveryDate: aDate deliverTime: aTime customer: aCustomer.