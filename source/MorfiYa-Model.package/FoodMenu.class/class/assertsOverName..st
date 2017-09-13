instance-creation
assertsOverName: aName
	aName size < 4
		ifTrue: [ InstanceCreationFailed signal: 'El nombre debe tener al menos 4 caracteres' ].
	aName size > 30
		ifTrue: [ InstanceCreationFailed signal: 'El nombre debe tener menos de 30 caracteres' ]