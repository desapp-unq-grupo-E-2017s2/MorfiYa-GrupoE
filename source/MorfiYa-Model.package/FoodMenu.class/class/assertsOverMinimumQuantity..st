instance-creation
assertsOverMinimumQuantity: aMinimumQuantity
	aMinimumQuantity isNil
		ifTrue: [ InstanceCreationFailed signal: 'La cantidad mínima no puede ser vacío' ].
	aMinimumQuantity < 10
		ifTrue: [ InstanceCreationFailed signal: 'La cantidad mínima debe ser al menos 10' ].
	aMinimumQuantity > 70
		ifTrue: [ InstanceCreationFailed signal: 'La cantidad mínima debe ser como máximo 70' ]