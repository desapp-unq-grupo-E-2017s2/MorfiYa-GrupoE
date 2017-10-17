Tests
testNoPriceForQuantityNotIncludedInAnyRange
	| priceOffer minoristRange mayoristRange minoristPrice mayoristPrice |
	minoristRange := 10 to: 40.
	minoristPrice := 10.
	mayoristRange := 41 to: 150.
	mayoristPrice := 8.
	priceOffer := PriceOffer
		ofMinoristRange: minoristRange
		forMinoristPrice: minoristPrice
		andMayoristRange: mayoristRange
		forMayororistPrice: mayoristPrice.
	self
		should: [ priceOffer priceFor: 8 ]
			raise: NoPriceFound
			withExceptionDo: [ :ex | 
			self
				assert: ex messageText
				equals: 'No se encontro un precio en oferta para la cantidad: ' , 8 printString ];
		should: [ priceOffer priceFor: 151 ]
			raise: NoPriceFound
			withExceptionDo: [ :ex | 
			self
				assert: ex messageText
				equals: 'No se encontro un precio en oferta para la cantidad: ' , 151 printString ]