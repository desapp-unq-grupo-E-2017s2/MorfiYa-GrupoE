Tests
testPriceForAQuantity
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
		assert: (priceOffer priceFor: 15) equals: 15 * minoristPrice;
		assert: (priceOffer priceFor: 50) equals: 50 * mayoristPrice