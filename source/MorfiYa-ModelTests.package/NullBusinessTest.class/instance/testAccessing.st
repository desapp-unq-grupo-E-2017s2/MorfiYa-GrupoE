Tests
testAccessing
	| business  |
	
	
	
	business := NullBusiness new.
	self
		assert: business businessName equals: 'Null business';
		assert: business logo equals: 'Null logo';
		assert: business location equals: 'Null location';
		assert: business address equals: 'Null adress';
		assert: business mapLocation equals: 0@0;
		assert: business description
			equals:
			'Null description';
		assert: business webSite equals: 'Null website';
		assert: business email equals: 'Null email';
		assert: business phone equals: 'Null phone';
		assert: business serviceTime isEmpty ;
		assert: business deliveryLocation equals: 'Null delivery location'