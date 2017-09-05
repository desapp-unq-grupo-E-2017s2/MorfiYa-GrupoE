Customer-Config
tableForCUSTOMER: aTable
	aTable createFieldNamed: 'id' type: platform sequence.
	aTable createFieldNamed: 'name' type: platform text.
	aTable createFieldNamed: 'cuit' type: platform text.
	aTable createFieldNamed: 'emailAddress' type: platform text.
	aTable createFieldNamed: 'telephoneNumer' type: platform text.
	aTable createFieldNamed: 'location' type: platform text.
	aTable createFieldNamed: 'money' type: platform double.
	(aTable fieldNamed: 'id') bePrimaryKey