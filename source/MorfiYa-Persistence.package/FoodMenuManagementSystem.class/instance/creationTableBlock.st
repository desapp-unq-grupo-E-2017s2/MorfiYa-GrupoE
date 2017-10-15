Configuring
creationTableBlock
	^ [ :aTable | 
	aTable createFieldNamed: 'id' type: self platform sequence.
	aTable createFieldNamed: 'name' type: self platform text.
	aTable createFieldNamed: 'description' type: self platform text.
"	aTable createFieldNamed: 'categories' type: self platform text. "
	aTable createFieldNamed: 'deliveryValue' type: self platform double.
"	aTable createFieldNamed: 'validDatePeriod' type: self platform text. "
"	aTable createFieldNamed: 'deliveryTimePeriod' type: self platform double. "
	aTable createFieldNamed: 'deliveryTimeAverage' type: self platform double.
	aTable createFieldNamed: 'price' type: self platform double.
	aTable createFieldNamed: 'minimumQuantity' type: self platform double.
	aTable createFieldNamed: 'minimumQuantityPrice' type: self platform double.
	aTable createFieldNamed: 'minimumQuantity2' type: self platform double.
	aTable createFieldNamed: 'minimumQuantityPrice2' type: self platform double.
	aTable createFieldNamed: 'maximumSaleQuantity' type: self platform double.
	(aTable fieldNamed: 'id') bePrimaryKey ]