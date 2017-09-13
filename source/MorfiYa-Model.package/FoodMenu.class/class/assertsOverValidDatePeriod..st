instance-creation
assertsOverValidDatePeriod: aPeriod
		aPeriod isNil ifTrue: [ InstanceCreationFailed signal: 'El período de vigencia no puede ser vacío' ]