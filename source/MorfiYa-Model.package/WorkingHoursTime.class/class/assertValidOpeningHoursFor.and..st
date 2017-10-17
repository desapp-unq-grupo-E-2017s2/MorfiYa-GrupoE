validating
assertValidOpeningHoursFor: anOpeningHour and: aClosingHour

	^ (anOpeningHour <= aClosingHour)
		ifFalse: [ InstanceCreationFailed signal: 'El rango horario es invalido' ]