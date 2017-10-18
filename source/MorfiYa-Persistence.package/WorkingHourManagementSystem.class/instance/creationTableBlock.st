Configuring
creationTableBlock

	^ [ :aTable | 
	| workingDayId foodMenuId |
	aTable createFieldNamed: #id type: self platform sequence.
	aTable createFieldNamed: #openingTime type: self platform int4.
	aTable createFieldNamed: #closingTime type: self platform int4.
	foodMenuId := aTable createFieldNamed: #foodMenuId type: self platform int4.
	aTable
		addForeignKeyFrom: foodMenuId
		to: ((self externalTableNamed: #FOOD_MENU) fieldNamed: #id).
	"workingDayId := aTable createFieldNamed: #workingDayId type: self platform int4.
	aTable addForeignKeyFrom: workingDayId to: (self externalObjectTable fieldNamed: #id)."
	(aTable fieldNamed: #id) bePrimaryKey ]