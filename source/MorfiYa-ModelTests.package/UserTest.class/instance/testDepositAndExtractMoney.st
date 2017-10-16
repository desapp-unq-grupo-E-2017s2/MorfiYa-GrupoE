tests
testDepositAndExtractMoney
	| user clientInfo |
	clientInfo := self clientInfo.
	user := User
		identifiedBy: '23344567899'
		named: 'name'
		and: 'lastName'
		describedAs: clientInfo.
	self
		assert: user money equals: 0.
		user deposit: 100.
	self
		assert: user money equals: 100.
	user extract: 50.
	self
		assert: user money equals: 50.