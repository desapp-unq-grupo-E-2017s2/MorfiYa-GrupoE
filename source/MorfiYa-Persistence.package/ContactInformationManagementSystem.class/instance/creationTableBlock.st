Configuring
creationTableBlock

	^ [ :aTable | 
	| userID |
	aTable createFieldNamed: 'id' type: self platform sequence.
	aTable createFieldNamed: 'address' type: self platform text.
	aTable createFieldNamed: 'locality' type: self platform text.
	aTable createFieldNamed: 'phoneNumber' type: self platform text.
	aTable createFieldNamed: 'email' type: self platform text.
	aTable createFieldNamed: 'password' type: self platform text.
	userID := aTable createFieldNamed: #user_id type: self platform int4.
	aTable addForeignKeyFrom: userID to: ((self relatedObjectTableNamed: 'USER') fieldNamed: 'id').
	(aTable fieldNamed: 'id') bePrimaryKey ]