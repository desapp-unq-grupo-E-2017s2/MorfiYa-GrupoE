Test Support
priceOffer

	| minoristRange mayoristRange minoristPrice mayoristPrice |
	minoristRange := 10 to: 40.
	minoristPrice := 10.
	mayoristRange := 41 to: 150.
	mayoristPrice := 8.
	^ PriceOffer
		ofMinoristRange: minoristRange
		forMinoristPrice: minoristPrice
		andMayoristRange: mayoristRange
		forMayororistPrice: mayoristPrice