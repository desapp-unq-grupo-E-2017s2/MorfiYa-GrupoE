Tests
testInstanceCreationFailedBecauseNameIsShort
	| workingHoursTime |
	workingHoursTime := OrderedCollection new
		add: (WorkingHoursTime on: Monday from: 8 to: 20);
		add: (WorkingHoursTime on: Tuesday from: 8 to: 20);
		add: (WorkingHoursTime on: Wednesday from: 8 to: 20);
		add: (WorkingHoursTime on: Thursday from: 8 to: 20);
		add: (WorkingHoursTime on: Friday from: 8 to: 20);
		yourself.
	self
		should: [ FoodMenu
				named: 'asd'
				description: 'Burguer + fries and coke'
				validDatePeriod: workingHoursTime
				deliveryTimePeriod: (8 to: 20)
				deliveryTimeAverage: 60
				price: 30
				maximumSaleQuantity: 200 ]
		raise: InstanceCreationFailed
		withExceptionDo: [ :exception | 
			self
				assert: exception messageText
				equals: 'El nombre debe tener al menos 4 caracteres' ]