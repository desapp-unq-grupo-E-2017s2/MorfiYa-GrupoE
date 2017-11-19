initialization
creationTableBlock

	| customerID vendorID |
	
	^ [ :aTable | 
	aTable createFieldNamed: 'id' type: self platform sequence.
	aTable createFieldNamed: 'quantity' type: self platform int4.
	aTable createFieldNamed: 'deliveryType' type: self platform text.
	aTable createFieldNamed: 'deliveryDate' type: self platform date.
	aTable createFieldNamed: 'deliveryTime' type: self platform double.
	customerID := aTable createFieldNamed: #customerID type: self platform int4.
	aTable addForeignKeyFrom: customerID to: (self relatedObjectTable fieldNamed: #id).
	vendorID := aTable createFieldNamed: #vendorID type: self platform int4.
	aTable addForeignKeyFrom: vendorID to: (self relatedObjectTable fieldNamed: #id).
	(aTable fieldNamed: 'id') bePrimaryKey ]