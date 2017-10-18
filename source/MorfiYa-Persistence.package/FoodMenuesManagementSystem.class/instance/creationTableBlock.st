Configuring
creationTableBlock
	^ [ :aTable | 
	| workingHourId |
	aTable createFieldNamed: 'id' type: self platform sequence.
	aTable createFieldNamed: 'name' type: self platform text.
	aTable createFieldNamed: 'description' type: self platform text.
	aTable createFieldNamed: 'deliveryTimeStart' type: self platform double.
	aTable createFieldNamed: 'deliveryTimeEnd' type: self platform double.
	aTable createFieldNamed: 'deliveryTimeAverage' type: self platform double.
	aTable createFieldNamed: 'price' type: self platform double.
	aTable createFieldNamed: 'maximumSaleQuantity' type: self platform double.
	workingHourId := aTable createFieldNamed: #workingHourId type: self platform int4.
	aTable addForeignKeyFrom: workingHourId to: (self relatedObjectTable fieldNamed: #id).
	(aTable fieldNamed: 'id') bePrimaryKey ]