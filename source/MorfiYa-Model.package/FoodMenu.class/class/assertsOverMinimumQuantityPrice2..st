instance-creation
assertsOverMinimumQuantityPrice2: aPrice
	aPrice < 0
		ifTrue: [ InstanceCreationFailed signal: 'El precio de la cantidad mínima 2 debe ser al menos 0' ].
	aPrice > 1000
		ifTrue: [ InstanceCreationFailed signal: 'El precio de la cantidad mínima 2 debe ser como máximo 1000' ]