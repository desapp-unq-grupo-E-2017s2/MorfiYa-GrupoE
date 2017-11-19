accessing
assertAllMenuesAreUnexpired: aDictionary
	
	^(aDictionary keys noneSatisfy: [ :menu | Date today between: menu validDatePeriod first and: menu validDatePeriod last ])
		ifTrue: [ "Do nothing. -isosa" ]
		ifFalse: [ InstanceCreationFailed signal: 'Existe algún menú que no se encuentra vigente al día de la fecha' ]