instance-creation
assertsOverMinimumQuantityPrice: aPrice
	aPrice isNil
		ifTrue: [ InstanceCreationFailed signal: 'El precio de la cantidad mínima no puede ser vacío' ].
	aPrice < 0 
		ifTrue: [ InstanceCreationFailed signal: 'El precio de la cantidad mínima debe ser al menos 0' ].
	aPrice > 1000
		ifTrue: [ InstanceCreationFailed signal: 'El precio de la cantidad mínima debe ser como máximo 1000' ]