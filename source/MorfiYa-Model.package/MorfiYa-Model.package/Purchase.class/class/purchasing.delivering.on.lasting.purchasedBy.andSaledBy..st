accessing
purchasing: menues delivering: aDeliveryType on: aDate lasting: aTime purchasedBy: aCustomer andSaledBy: anotherCustomer

	self assertIsValidDeliveryDate: aDate.
	self assertNotEmptyPurchase: menues.
	self assertHasEnoughMoney: aCustomer for: menues.
	self assertAllMenuesAreUnexpired: menues.
	
	^ self new
		purchasing: menues
		delivering: aDeliveryType
		on: aDate
		lasting: aTime
		purchasedBy: aCustomer
		andSaledBy: anotherCustomer 