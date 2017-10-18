tests
testAccessing
	| user clientInfo foodBusiness |
	clientInfo := self contactInformation.
	foodBusiness := self foodBusiness.
	user := User
		identifiedBy: '23344567899'
		named: 'name'
		and: 'lastName'
		describedAs: clientInfo
		startingBusiness: foodBusiness.
	self
		assert: user cuit equals: '23344567899';
		assert: user name equals: 'name';
		assert: user lastName equals: 'lastName';
		assert: user contactInformation equals: clientInfo;
		assert: user money equals: 0;
		assert: user hasBusiness