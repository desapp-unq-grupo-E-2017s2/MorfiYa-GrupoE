Instance Creation
assertsIsValidDescription: aDescription
	aDescription size < 30
		ifTrue: [ InstanceCreationFailed signal: 'La descipción debe tener al menos 30 caracteres' ].
	aDescription size > 200
		ifTrue: [ InstanceCreationFailed signal: 'La descipción debe tener menos de 200 caracteres' ]