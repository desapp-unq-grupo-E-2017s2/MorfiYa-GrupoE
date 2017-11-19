Tests
testInstanceCreationFailedBecauseOfRangesAndPricesValidations
	| minoristRange mayoristRange wrongMinoristRange wrongMayoristRange |
	minoristRange := 10 to: 40.
	wrongMinoristRange := 10 to: 45.
	mayoristRange := 41 to: 150.
	wrongMayoristRange := 30 to: 150.
	self
		should: [ PriceOffer
				ofMinoristRange: wrongMinoristRange
				forMinoristPrice: 10
				andMayoristRange: mayoristRange
				forMayororistPrice: 8 ]
		raise: InstanceCreationFailed
		withExceptionDo:
			[ :ex | self assert: ex messageText equals: 'Minorist range should be between 10 and 40' ].
	self
		should: [ PriceOffer
				ofMinoristRange: minoristRange
				forMinoristPrice: 10
				andMayoristRange: wrongMayoristRange
				forMayororistPrice: 8 ]
		raise: InstanceCreationFailed
		withExceptionDo:
			[ :ex | self assert: ex messageText equals: 'Mayorist range should be between 41 and 150' ].
	self
		should: [ PriceOffer
				ofMinoristRange: minoristRange
				forMinoristPrice: 8
				andMayoristRange: mayoristRange
				forMayororistPrice: 10 ]
		raise: InstanceCreationFailed
		withExceptionDo:
			[ :ex | self assert: ex messageText equals: 'Minorist price should be lower than mayorist price' ]