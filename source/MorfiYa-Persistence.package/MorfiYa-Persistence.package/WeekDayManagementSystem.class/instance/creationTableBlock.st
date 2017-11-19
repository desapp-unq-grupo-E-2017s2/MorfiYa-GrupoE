Configuring
creationTableBlock

	^ [ :aTable | 
	|  workingHoursId |
	aTable createFieldNamed: 'id' type: self platform sequence.
	aTable createFieldNamed: 'description' type: self platform text.
	workingHoursId := aTable createFieldNamed: #workingHoursId type: self platform int4.
	aTable
		addForeignKeyFrom: workingHoursId
		to: ((self relatedObjectTableNamed: #WORKING_HOUR) fieldNamed: #id).
	(aTable fieldNamed: 'id') bePrimaryKey ]