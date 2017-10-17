Validating
assertsOverDeliveryTimeAverage: aTimeAverage
	aTimeAverage isNil
		ifTrue: [ InstanceCreationFailed signal: 'El tiempo promedio de delivery no puede ser vacío' ]