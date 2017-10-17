Configuring
creationTableBlock
	^ [ :aTable | 
	| workingTimeId |
	aTable createFieldNamed: 'id' type: self platform sequence.
	aTable createFieldNamed: 'name' type: self platform text.
	aTable createFieldNamed: 'description' type: self platform text.
	aTable createFieldNamed: 'deliveryValue' type: self platform double.
	aTable createFieldNamed: 'deliveryTimeStart' type: self platform double.
	aTable createFieldNamed: 'deliveryTimeEnd' type: self platform double.
	aTable createFieldNamed: 'deliveryTimeAverage' type: self platform double.
	aTable createFieldNamed: 'price' type: self platform double.
	aTable createFieldNamed: 'maximumSaleQuantity' type: self platform double.
	workingTimeId := aTable createFieldNamed: #workingTimeId type: self platform int4.
	aTable addForeignKeyFrom: workingTimeId to: ((self externalTableNamed: #WORKING_HOUR) fieldNamed: 'id').
	(aTable fieldNamed: 'id') bePrimaryKey ]