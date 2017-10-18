validation
assertIsDayOfTheWeek: aDay
	(aDay isA: WeekDay)
		ifFalse: [ InstanceCreationFailed signal: aDay description , ' no es un día valido' ]