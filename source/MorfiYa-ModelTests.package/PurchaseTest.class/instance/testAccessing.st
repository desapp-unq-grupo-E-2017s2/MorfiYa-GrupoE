tests
testAccessing
	| purchase |
	purchase := Purchase
		menus: menusDictionary 
		deliveryType: 'Delivery'
		deliveryDate: GregorianCalendar today 
		deliveryTime: (TimeOfDay hours: 17 minutes: 00)
		customer: 'Customer'.
	self
		assert: purchase menus equals: menusDictionary;
		assert: purchase deliveryType equals: 'Delivery';
		assert: purchase deliveryDate equals: GregorianCalendar today;
		assert: purchase deliveryTime equals: (TimeOfDay hours: 17 minutes: 00);
		assert: purchase customer equals: 'Customer'