FoodBusiness-Config
tableForFOODBUSINESS: aTable

	aTable createFieldNamed: 'id' type: platform sequence.
	aTable createFieldNamed: 'name' type: platform text.
	aTable createFieldNamed: 'logo' type: platform text.
	aTable createFieldNamed: 'location' type: platform text.
	aTable createFieldNamed: 'address' type: platform text.
	aTable createFieldNamed: 'map_location' type: platform text.
	aTable createFieldNamed: 'description' type: platform text.
	aTable createFieldNamed: 'web_site' type: platform text.
	aTable createFieldNamed: 'email' type: platform text.
	aTable createFieldNamed: 'phone_number' type: platform text.
	aTable createFieldNamed: 'service_time' type: platform text.
	aTable createFieldNamed: 'delivery_location' type: platform text.
	aTable createFieldNamed: 'scores' type: platform text.
	(aTable fieldNamed: 'id') bePrimaryKey