validation
assertIsDayOfTheWeek: aDay 

	(aDay isA: Day) ifFalse: [ InstanceCreationFailed signal: aDay , ' no es un día valido']