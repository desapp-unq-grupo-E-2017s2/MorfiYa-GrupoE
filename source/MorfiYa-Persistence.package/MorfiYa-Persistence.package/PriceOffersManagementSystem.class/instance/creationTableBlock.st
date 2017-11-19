Configuring
creationTableBlock
	^ [ :aTable | 
	aTable createFieldNamed: 'id' type: self platform sequence.
	aTable createFieldNamed: #minoristRangeStart type: self platform int4.
	aTable createFieldNamed: #minoristRangeEnd type: self platform int4.
	aTable createFieldNamed: #minoristPrice type: self platform double.
	aTable createFieldNamed: #mayoristRangeStart type: self platform int4.
	aTable createFieldNamed: #mayoristRangeEnd type: self platform int4.
	aTable createFieldNamed: #mayoristPrice type: self platform double.
	(aTable fieldNamed: 'id') bePrimaryKey ]