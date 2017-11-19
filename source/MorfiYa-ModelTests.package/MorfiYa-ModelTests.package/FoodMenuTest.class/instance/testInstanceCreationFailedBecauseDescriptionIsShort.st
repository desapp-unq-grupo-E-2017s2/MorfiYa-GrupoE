Tests
testInstanceCreationFailedBecauseDescriptionIsShort
	| workingHoursTime |
	workingHoursTime := OrderedCollection new
		add: (WorkingHoursTime on: (WeekDay monday) from: 8 to: 20);
		add: (WorkingHoursTime on: (WeekDay tuesday) from: 8 to: 20);
		add: (WorkingHoursTime on: (WeekDay wednesday) from: 8 to: 20);
		add: (WorkingHoursTime on: (WeekDay thursday) from: 8 to: 20);
		add: (WorkingHoursTime on: (WeekDay friday) from: 8 to: 20);
		yourself.
	self
		should: [ FoodMenu
				named: 'McCombo'
				description: 'Burguer + fries'
				validDatePeriod: workingHoursTime
				deliveryTimePeriod: (8 to: 20)
				deliveryTimeAverage: 60
				price: 30
				maximumSaleQuantity: 200 ]
		raise: InstanceCreationFailed
		withExceptionDo: [ :exception | 
			self
				assert: exception messageText
				equals: 'La descripción debe tener al menos 20 caracteres' ]