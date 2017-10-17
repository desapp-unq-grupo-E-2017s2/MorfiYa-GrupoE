Configuring
creationTableBlock
	^ [ :aTable | 
	| priceOfferId foodMenuId |
	aTable createFieldNamed: 'id' type: self platform sequence.
	(aTable fieldNamed: 'id') bePrimaryKey.
	priceOfferId := aTable
		createFieldNamed: #priceOfferId
		type: self platform int4.
	aTable
		addForeignKeyFrom: priceOfferId
		to: (self relatedObjectTable fieldNamed: 'id').
	foodMenuId := aTable
		createFieldNamed: #foodMenuId
		type: self platform int4.
	aTable
		addForeignKeyFrom: foodMenuId
		to: (self relatedObjectTable fieldNamed: 'id') ]