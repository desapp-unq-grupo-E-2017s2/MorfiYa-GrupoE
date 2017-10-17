Configuring
creationTableBlock
	^ [ :aTable | 
	| contactInfoId |
	aTable createFieldNamed: 'id' type: self platform sequence.
	aTable createFieldNamed: 'name' type: self platform text.
	aTable createFieldNamed: 'lastName' type: self platform text.
	aTable createFieldNamed: 'cuit' type: self platform text.
	aTable createFieldNamed: 'money' type: self platform double.
	(aTable fieldNamed: 'id') bePrimaryKey.
	contactInfoId := aTable createFieldNamed: #contactInfoId type: self platform int4.
	aTable addForeignKeyFrom: contactInfoId to: ((self relatedObjectTableNamed: #CONTACT_INFORMATION) fieldNamed: 'id') ]