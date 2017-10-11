tests
testInstanceCreationFailedBecauseThereIsntAnyMenu
	self
		should: [ Purchase
				menus: Dictionary new
				deliveryType: 'Delivery'
				deliveryDate: (GregorianCalendar today)   
				deliveryTime: (TimeOfDay hours: 17 minutes: 00)
				customer: 'aCustomer' ]
		raise: InstanceCreationFailed
		withExceptionDo: [ :exception | 
			self
				assert: exception messageText
				equals: 'Debe comprar al menos un menu' ]