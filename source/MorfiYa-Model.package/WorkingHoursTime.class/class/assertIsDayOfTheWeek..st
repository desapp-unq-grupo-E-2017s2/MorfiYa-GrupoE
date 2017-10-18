validation
assertIsDayOfTheWeek: aDay 
	(aDay isA: WeekDay)
		ifFalse: [ InstanceCreationFailed signal: (aDay printString , ' no es un día valido') ]