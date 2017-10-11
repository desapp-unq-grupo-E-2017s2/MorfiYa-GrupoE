tests
testInstanceCreationFailedBecauseDeliveryDateIsThreeDaysLater
	self
		should: [ Purchase
				menus: menusDictionary 
				deliveryType: 'Delivery'
				deliveryDate: (GregorianCalendar today next: 3 dayMeasure)   
				deliveryTime: (TimeOfDay hours: 17 minutes: 00)
				customer: 'aCustomer' ]
		raise: InstanceCreationFailed
		withExceptionDo: [ :exception | 
			self
				assert: exception messageText
				equals: 'La fecha de delivery no puede superar las 48hs' ]