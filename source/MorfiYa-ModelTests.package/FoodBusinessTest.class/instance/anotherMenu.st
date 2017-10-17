Test Support
anotherMenu
	| workingHoursTime |
	workingHoursTime := OrderedCollection new
		add: (WorkingHoursTime on: Monday from: 8 to: 20);
		add: (WorkingHoursTime on: Tuesday from: 8 to: 20);
		add: (WorkingHoursTime on: Wednesday from: 8 to: 20);
		add: (WorkingHoursTime on: Thursday from: 8 to: 20);
		add: (WorkingHoursTime on: Friday from: 8 to: 20);
		yourself.
	^ FoodMenu
		named: 'McCombo2'
		description: 'Burguer + fries and coke2'
		validDatePeriod: workingHoursTime
		deliveryTimePeriod: (8 to: 20)
		deliveryTimeAverage: 60
		price: 12
		maximumSaleQuantity: 200