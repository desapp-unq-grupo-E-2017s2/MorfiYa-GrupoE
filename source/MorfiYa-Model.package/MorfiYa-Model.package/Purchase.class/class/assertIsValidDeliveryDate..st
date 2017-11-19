accessing
assertIsValidDeliveryDate: aDate

	aDate < GregorianCalendar today
		ifTrue: [ InstanceCreationFailed signal: 'La fecha de delivery debe ser de hoy en adelante' ].
	aDate > GregorianCalendar tomorrow next
		ifTrue: [ InstanceCreationFailed signal: 'La fecha de delivery no puede superar las 48hs' ]