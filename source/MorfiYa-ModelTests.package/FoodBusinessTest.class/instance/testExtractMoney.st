tests
testExtractMoney
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
	business depositMoney: 500.
	business extractMoney: 300.
	
self assert: business money equals: 200.