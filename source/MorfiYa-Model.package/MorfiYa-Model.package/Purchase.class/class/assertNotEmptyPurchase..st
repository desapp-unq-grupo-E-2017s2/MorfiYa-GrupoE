accessing
assertNotEmptyPurchase: menuesInPurchase

	menuesInPurchase keys isEmpty 
		ifTrue: [ InstanceCreationFailed signal: 'Debe comprar al menos un menu' ].