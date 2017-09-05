instance-creation
assertsOverMinimumQuantity2: aMinimumQuantity
	aMinimumQuantity < 71
		ifTrue: [ InstanceCreationFailed signal: 'La cantidad mínima 2 debe ser al menos 71' ].
	aMinimumQuantity > 150
		ifTrue: [ InstanceCreationFailed signal: 'La cantidad mínima 2 debe ser como máximo 150' ]