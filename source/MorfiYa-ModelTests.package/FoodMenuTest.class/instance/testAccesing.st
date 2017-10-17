tests
testAccesing
	| workingHoursTime foodMenu |
	workingHoursTime := OrderedCollection new
		add: (WorkingHoursTime on: Monday from: 8 to: 20);
		add: (WorkingHoursTime on: Tuesday from: 8 to: 20);
		add: (WorkingHoursTime on: Wednesday from: 8 to: 20);
		add: (WorkingHoursTime on: Thursday from: 8 to: 20);
		add: (WorkingHoursTime on: Friday from: 8 to: 20);
		yourself.
	foodMenu := FoodMenu
		named: 'McCombo'
		description: 'Burguer + fries and coke'
		validDatePeriod: workingHoursTime
		deliveryTimePeriod: (8 to: 20)
		deliveryTimeAverage: 60
		price: 30
		maximumSaleQuantity: 200.
	self
		assert: foodMenu name equals: 'McCombo';
		assert: foodMenu description equals: 'Burguer + fries and coke';
		assert: foodMenu validDatePeriod equals: workingHoursTime;
		assert: foodMenu deliveryTimePeriod equals: (8 to: 20);
		assert: foodMenu deliveryTimeAverage equals: 60;
		assert: foodMenu price equals: 30;
		assert: foodMenu maximumSaleQuantity equals: 200