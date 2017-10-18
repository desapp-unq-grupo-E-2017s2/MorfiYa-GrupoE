Tests
testAccessing
	| business |
	business := FoodBusiness
		named: 'McDonalds'
		withLogo: 'logo1'
		mapLocation: 127 @ 127
		described:
			'aasdasdasadsadas daadsdasadsads asdsadsdasadsadsdssdasdasdadsadsadsadsadsasdsdds'
		webSite: 'www.facebook.com/pipi1'
		serviceTime: {((Monday to: Friday) -> (8 to: 20))} asDictionary
		deliveryLocation: 'direccion2'.
	self
		assert: business name equals: 'McDonalds';
		assert: business logo equals: 'logo1';
		assert: business location equals: 'Springfield';
		assert: business address equals: 'Calle falsa 123';
		assert: business mapLocation equals: 127 @ 127;
		assert: business description
			equals:
			'aasdasdasadsadas daadsdasadsads asdsadsdasadsadsdssdasdasdadsadsadsadsadsasdsdds';
		assert: business webSite equals: 'www.facebook.com/pipi1';
		assert: business email equals: 'hernan.coronel@yahoo.com';
		assert: business phone equals: '42523060';
		assert: business serviceTime
			equals: {((Monday to: Friday) -> (8 to: 20))} asDictionary;
		assert: business deliveryLocation equals: 'direccion2'