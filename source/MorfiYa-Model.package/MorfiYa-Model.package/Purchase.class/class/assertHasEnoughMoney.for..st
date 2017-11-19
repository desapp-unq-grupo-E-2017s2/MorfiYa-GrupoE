instance initialization
assertHasEnoughMoney: aCustomer for: aDictionary

	| totalAmountToDebit |
	
	totalAmountToDebit := aDictionary
		keysAndValuesDo: [ :menu :quant | 
			| total |
			total := 0.
			total + (menu price * quant) ].
		
	^ aCustomer money >= totalAmountToDebit
		ifTrue: [ "Do nothing. -isosa" ]
		ifFalse: [ InstanceCreationFailed signal: 'No posee suficiente dinero para realizar esta compra' ]