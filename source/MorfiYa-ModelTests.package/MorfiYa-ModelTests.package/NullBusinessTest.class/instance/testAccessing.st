Tests
testAccessing
	| business |
	business := NullBusiness new.
	self
		assert: business name equals: 'Null business';
		assert: business logo equals: 'Null logo';
		assert: business mapLocation equals: 0 @ 0;
		assert: business description equals: 'Null description';
		assert: business webSite equals: 'Null website';
		assert: business serviceTime isEmpty;
		assert: business deliveryLocation equals: 'Null delivery location'