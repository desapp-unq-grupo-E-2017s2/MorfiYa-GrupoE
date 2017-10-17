Configuring
creationTableBlock

	^ [ :aTable | 
		
	| serviceTime contactInformation |
	
	aTable createFieldNamed: 'id' type: self platform sequence.
	aTable createFieldNamed: 'name' type: self platform text.
	aTable createFieldNamed: 'logo' type: self platform text.
	aTable createFieldNamed: 'map_location' type: self platform text.
	aTable createFieldNamed: 'description' type: self platform text.
	aTable createFieldNamed: 'web_site' type: self platform text.
	serviceTime := aTable createFieldNamed: 'service_time' type: self platform int4.
	aTable addForeignKeyFrom: #id to: ((self tableNamed: #working_hours) fieldNamed: 'id').
	aTable createFieldNamed: 'delivery_location' type: self platform text.
	contactInformation := aTable createFieldNamed: 'contact_information' type: self platform int4.
	aTable addForeignKeyFrom: #id to: ((self tableNamed: #contact_information) fieldNamed: 'id').
	aTable createFieldNamed: 'scores' type: self platform text.
	(aTable fieldNamed: 'id') bePrimaryKey ]