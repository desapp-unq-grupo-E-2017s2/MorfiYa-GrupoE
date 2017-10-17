Test Support
anotherFodMenu
	| workingHoursTime |
	workingHoursTime := OrderedCollection new
		add: (WorkingHoursTime on: Monday from: 8 to: 20);
		add: (WorkingHoursTime on: Tuesday from: 8 to: 20);
		add: (WorkingHoursTime on: Wednesday from: 8 to: 20);
		add: (WorkingHoursTime on: Thursday from: 8 to: 20);
		add: (WorkingHoursTime on: Friday from: 8 to: 20);
		yourself.
	^ FoodMenu
		named: 'TripleMc'
		description: 'Triple burger combo with fries and coke'
		validDatePeriod: workingHoursTime
		deliveryTimePeriod: (8 to: 20)
		deliveryTimeAverage: 60
		price: 30
		maximumSaleQuantity: 200