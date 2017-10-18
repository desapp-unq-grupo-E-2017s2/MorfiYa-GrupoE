Configuring
creationTableBlock

	^ [ :aTable | 
	| foodMenuId workingHOursId |
	aTable createFieldNamed: 'id' type: self platform sequence.
	aTable createFieldNamed: 'description' type: self platform text.
	"foodMenuId := aTable createFieldNamed: 'foodMenuId' type: self platform int4.
	aTable addForeignKeyFrom: foodMenuId to: (self relatedObjectTable fieldNamed: 'id')."
	workingHOursId := aTable createFieldNamed: #workingHOursId type: self platform int4.
	aTable
		addForeignKeyFrom: workingHOursId
		to: ((self externalTableNamed: #WORKING_HOUR) fieldNamed: #id).
	(aTable fieldNamed: 'id') bePrimaryKey ]