Configuring
creationTableBlock
	^ [ :aTable | 
	aTable createFieldNamed: 'id' type: self platform sequence.
	aTable createFieldNamed: 'name' type: self platform text.
	aTable createFieldNamed: 'cuit' type: self platform text.
	aTable createFieldNamed: 'emailAddress' type: self platform text.
	aTable createFieldNamed: 'telephoneNumer' type: self platform text.
	aTable createFieldNamed: 'location' type: self platform text.
	aTable createFieldNamed: 'money' type: self platform double.
	(aTable fieldNamed: 'id') bePrimaryKey ]