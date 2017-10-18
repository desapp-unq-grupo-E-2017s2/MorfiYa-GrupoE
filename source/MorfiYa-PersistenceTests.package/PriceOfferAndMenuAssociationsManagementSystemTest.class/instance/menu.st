Test Support
menu
	| workingHoursTime |
	workingHoursTime := OrderedCollection new
		add: (WorkingHoursTime on: WeekDay monday from: 8 to: 20);
		add: (WorkingHoursTime on: WeekDay tuesday from: 8 to: 20);
		add: (WorkingHoursTime on: WeekDay wednesday from: 8 to: 20);
		add: (WorkingHoursTime on: WeekDay thursday from: 8 to: 20);
		add: (WorkingHoursTime on: WeekDay friday from: 8 to: 20);
		yourself.
	^ FoodMenu
		named: 'McCombo'
		description: 'Burguer + fries and coke'
		validDatePeriod: workingHoursTime
		deliveryTimePeriod: (8 to: 20)
		deliveryTimeAverage: 60
		price: 12
		maximumSaleQuantity: 200