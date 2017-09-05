tests
testScore
	| business |
	business := FoodBusiness
		named: 'McDonalds'
		withLogo: 'logo1'
		locationAt: 'direccion'
		address: 'Juncal 123'
		mapLocation: 127 @ 127
		described: 'aasdasdasadsadas daadsdasadsads asdsadsdasadsadsdssdasdasdadsadsadsadsadsasdsdds'
		webSite: 'www.facebook.com/pipi1'
		email: 'asd@asd.com'
		phone: '42522825'
		serviceTime: {((Monday to: Friday) -> (8 to: 20))} asDictionary
		deliveryLocation: 'direccion2'.
		business addScore: 4; addScore: 5; addScore: 3; addScore: 3.
	
	self assert: business score equals: 3.75