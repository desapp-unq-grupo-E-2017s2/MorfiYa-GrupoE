tests
testEstimatedDeliveryTime
	| purchase |
	purchase := Purchase
		menus: menusDictionary
		deliveryType: 'Delivery'
		deliveryDate: GregorianCalendar today
		deliveryTime: (TimeOfDay hours: 17 minutes: 00)
		customer: 'Customer'.
		
	self assert: purchase estimatedTimeForDelivery equals: 60