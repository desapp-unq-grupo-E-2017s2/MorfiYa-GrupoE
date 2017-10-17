Tests
testAccessingInstanceCreationFailedBecauseMenuPriceIsLowerThanPriceOfferPrices
	| priceOffer menu |
	priceOffer := self priceOffer.
	menu := self menuWithPrice6.
	self
		should: [ PriceOfferAndMenuAssociation of: priceOffer and: menu ]
		raise: InstanceCreationFailed
		withExceptionDo:
			[ :ex | self assert: ex messageText equals: 'Menu price should be higher than price offer prices' ]