tests
testAccessing
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
	self
		assert: business businessName equals: 'McDonalds';
		assert: business logo equals: 'logo1';
		assert: business location equals: 'direccion';
		assert: business address equals: 'Juncal 123';
		assert: business mapLocation equals: 127 @ 127;
		assert: business description
			equals: 'aasdasdasadsadas daadsdasadsads asdsadsdasadsadsdssdasdasdadsadsadsadsadsasdsdds';
		assert: business webSite equals: 'www.facebook.com/pipi1';
		assert: business email equals: 'asd@asd.com';
		assert: business phone equals: '42522825';
		assert: business serviceTime
			equals: {((Monday to: Friday) -> (8 to: 20))} asDictionary;
		assert: business deliveryLocation equals: 'direccion2'