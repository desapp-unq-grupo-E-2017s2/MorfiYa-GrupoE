Validating
assertsIsValidDescription: aDescription
	aDescription size < 20
		ifTrue: [ InstanceCreationFailed signal: 'La descripción debe tener al menos 20 caracteres' ].
	aDescription size > 40
		ifTrue: [ InstanceCreationFailed signal: 'La descripción debe tener menos de 40 caracteres' ]