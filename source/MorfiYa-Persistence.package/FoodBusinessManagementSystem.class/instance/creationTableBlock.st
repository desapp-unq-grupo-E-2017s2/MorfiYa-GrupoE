Configuring
creationTableBlock

	^ [ :aTable | 
	aTable createFieldNamed: #id type: self platform sequence.
	aTable createFieldNamed: #name type: self platform text.
	aTable createFieldNamed: #logo type: self platform text.
	aTable createFieldNamed: #mapLocation type: self platform text.
	aTable createFieldNamed: #description type: self platform text.
	aTable createFieldNamed: #webSite type: self platform text.
	aTable createFieldNamed: #deliveryLocation type: self platform text.
	aTable createFieldNamed: #scores type: self platform int4.
	(aTable fieldNamed: #id) bePrimaryKey ]