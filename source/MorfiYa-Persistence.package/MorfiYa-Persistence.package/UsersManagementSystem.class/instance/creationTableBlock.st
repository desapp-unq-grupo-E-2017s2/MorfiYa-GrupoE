Configuring
creationTableBlock

	| validDatePeriodId |
	^ [ :aTable | 
	aTable createFieldNamed: 'id' type: self platform sequence.
	aTable createFieldNamed: 'name' type: self platform text.
	aTable createFieldNamed: 'lastName' type: self platform text.
	aTable createFieldNamed: 'cuit' type: self platform text.
	aTable createFieldNamed: 'money' type: self platform double.
	aTable createFieldNamed: 'contactInformation' type: self platform text. 
	validDatePeriodId := aTable createFieldNamed: #validDatePeriod type: self platform int4.
	aTable addForeignKeyFrom: validDatePeriodId to: (self relatedObjectTable fieldNamed: #id).
	(aTable fieldNamed: 'id') bePrimaryKey ]