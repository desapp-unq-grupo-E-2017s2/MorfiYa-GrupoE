tests
testAccessing
	| user clientInfo |
	clientInfo := self clientInfo.
	user := User
		identifiedBy: '23344567899'
		named: 'name'
		and: 'lastName'
		describedAs: clientInfo.
	self
		assert: user cuit equals: '23344567899';
		assert: user name equals: 'name';
		assert: user lastName equals: 'lastName';
		assert: user clientInfo equals: clientInfo;
		assert: user money equals: 0