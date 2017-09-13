instance-creation
assertsOverDeliveryValue: aValue
	aValue < 10
		ifTrue: [ InstanceCreationFailed signal: 'El costo de delivery debe ser al menos $10' ].
	aValue > 40
		ifTrue: [ InstanceCreationFailed signal: 'El costo de delivery debe ser como máximo $40' ]