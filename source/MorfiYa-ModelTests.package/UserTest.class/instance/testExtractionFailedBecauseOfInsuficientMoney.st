tests
testExtractionFailedBecauseOfInsuficientMoney
	| user clientInfo |
	clientInfo := self clientInfo.
	user := User
		identifiedBy: '23344567899'
		named: 'name'
		and: 'lastName'
		describedAs: clientInfo.
	self assert: user money equals: 0.
	self
		should: [ user extract: 100 ]
		raise: MoneyTransactionFailed
		withExceptionDo:
			[ :ex | self assert: ex messageText equals: 'Could not extract because of insuficient money' ]