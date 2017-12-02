Configuring
creationTableBlock

	^ [ :aTable | 
	| foodMenuId foodBusinessId |
	aTable createFieldNamed: #id type: self platform sequence.
	aTable createFieldNamed: #openningTime type: self platform int4.
	aTable createFieldNamed: #closingTime type: self platform int4.
	foodMenuId := aTable createFieldNamed: #foodMenuId type: self platform int4.
	aTable addForeignKeyFrom: foodMenuId to: ((self relatedObjectTableNamed: #FOOD_MENU) fieldNamed: #id).
	foodBusinessId := aTable createFieldNamed: #foodBusinessId type: self platform int4.
	aTable addForeignKeyFrom: foodBusinessId to: ((self relatedObjectTableNamed: #FOOD_BUSINESS) fieldNamed: #id).
	(aTable fieldNamed: #id) bePrimaryKey ]