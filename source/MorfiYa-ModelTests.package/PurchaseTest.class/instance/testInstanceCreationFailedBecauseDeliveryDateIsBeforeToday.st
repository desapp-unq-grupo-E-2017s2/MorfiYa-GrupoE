tests
testInstanceCreationFailedBecauseDeliveryDateIsBeforeToday
	self
		should: [ Purchase
				menus: menusDictionary 
				deliveryType: 'Delivery'
				deliveryDate: GregorianCalendar yesterday
				deliveryTime: (TimeOfDay hours: 17 minutes: 00)
				customer: 'aCustomer' ]
		raise: InstanceCreationFailed
		withExceptionDo: [ :exception | 
			self
				assert: exception messageText
				equals: 'La fecha de delivery debe ser de hoy en adelante' ]