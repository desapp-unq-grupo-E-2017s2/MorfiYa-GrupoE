instance-creation
assertOverPrice: aPrice withMinimumQuantityPrice: aMinimumQuantityPrice andMinimumQuantityPrice2: anotherMinimumQuantityPrice
	aPrice <= aMinimumQuantityPrice
		ifTrue: [ InstanceCreationFailed signal: 'El precio debe ser mayor al precio de la cantidad mínima' ].
	aMinimumQuantityPrice <= anotherMinimumQuantityPrice
		ifTrue: [ InstanceCreationFailed signal: 'El precio de cantidad mínima 2 debe ser menor al precio de cantidad mínima' ]