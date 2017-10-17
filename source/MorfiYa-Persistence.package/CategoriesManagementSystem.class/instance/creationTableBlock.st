Configuring
creationTableBlock
	^ [ :aTable | 
	aTable createFieldNamed: 'id' type: self platform sequence.
	aTable createFieldNamed: 'description' type: self platform text.
	(aTable fieldNamed: 'id') bePrimaryKey ]