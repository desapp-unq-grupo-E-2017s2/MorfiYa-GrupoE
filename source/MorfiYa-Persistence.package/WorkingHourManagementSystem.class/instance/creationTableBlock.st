Configuring
creationTableBlock

	^ [ :aTable | 
	| workingDay |
	
	aTable createFieldNamed: 'id' type: self platform sequence.
	workingDay := aTable createFieldNamed: #workingDay type: self platform int4.
	aTable addForeignKeyFrom: workingDay to: ((self externalTableNamed: #WORKING_DAY) fieldNamed: 'id').
	aTable createFieldNamed: #openingTime type: self platform int4.
	aTable createFieldNamed: #closingTime type: self platform int4.
	(aTable fieldNamed: 'id') bePrimaryKey ]