Configuring
creationTableBlock

	^ [ :aTable | 
	aTable createFieldNamed: 'id' type: self platform sequence.
	aTable createFieldNamed: 'address' type: self platform text.
	aTable createFieldNamed: 'locality' type: self platform text.
	aTable createFieldNamed: 'phoneNumber' type: self platform text.
	aTable createFieldNamed: 'email' type: self platform text.
	(aTable fieldNamed: 'id') bePrimaryKey ]