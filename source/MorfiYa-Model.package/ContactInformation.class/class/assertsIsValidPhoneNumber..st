Validating
assertsIsValidPhoneNumber: aPhoneNumber

	aPhoneNumber size < 6
		ifTrue: [ InstanceCreationFailed signal: 'El numero debe tener un mínimo de 6 digitos(contando el codigo de area)' ].
	aPhoneNumber size > 15
		ifTrue: [ InstanceCreationFailed signal: 'El numero debe tener como máximo 15 digitos(contando el codigo de area)' ].
	(aPhoneNumber allSatisfy: [ :each | each = $0 ])
		ifTrue: [ InstanceCreationFailed signal: 'El numero no puede contener todos sus digitos "0"' ]