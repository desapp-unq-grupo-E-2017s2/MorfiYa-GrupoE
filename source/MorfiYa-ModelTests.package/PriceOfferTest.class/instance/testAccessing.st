Tests
testAccessing
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
		assert: priceOffer minoristRange equals: minoristRange;
		assert: priceOffer minoristPrice equals: minoristPrice;
		assert: priceOffer mayoristRange equals: mayoristRange;
		assert: priceOffer mayoristPrice equals: mayoristPrice