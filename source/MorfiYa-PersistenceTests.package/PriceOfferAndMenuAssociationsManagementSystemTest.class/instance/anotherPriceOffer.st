Test Support
anotherPriceOffer
	| minoristRange mayoristRange minoristPrice mayoristPrice |
	minoristRange := 10 to: 40.
	minoristPrice := 12.
	mayoristRange := 41 to: 150.
	mayoristPrice := 10.
	^ PriceOffer
		ofMinoristRange: minoristRange
		forMinoristPrice: minoristPrice
		andMayoristRange: mayoristRange
		forMayororistPrice: mayoristPrice