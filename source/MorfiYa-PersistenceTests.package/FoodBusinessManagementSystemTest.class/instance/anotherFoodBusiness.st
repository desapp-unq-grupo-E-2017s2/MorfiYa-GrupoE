Test Support
anotherFoodBusiness
	| workingHours |
	workingHours := OrderedCollection new
		add: (WorkingHoursTime on: WeekDay monday from: 8 to: 20);
		add: (WorkingHoursTime on: WeekDay tuesday from: 8 to: 20);
		add: (WorkingHoursTime on: WeekDay wednesday from: 8 to: 20);
		add: (WorkingHoursTime on: WeekDay thursday from: 8 to: 20);
		add: (WorkingHoursTime on: WeekDay friday from: 8 to: 20);
		yourself.
	^ FoodBusiness
		named: 'McDonalds2'
		withLogo: 'logo2'
		mapLocation: '127,127'
		described:
			'aasdasdasadsadas daadsdasadsads asdsadsdasadsadsdssdasdasdadsadsadsadsadsasdsdds'
		webSite: 'www.facebook.com/pipi2'
		serviceTime: workingHours
		deliveryLocation: 'direccion3'