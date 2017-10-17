Tests
testUpdatePriceOffer
	| priceOffer anotherPriceOffer priceOfferFromDatabase |
	self assert: priceOffersPersistenceSystem priceOffersCount equals: 0.
	priceOffer := self priceOffer.
	anotherPriceOffer := self anotherPriceOffer.
	priceOffersPersistenceSystem addPriceOffer: priceOffer.
	priceOffersPersistenceSystem updatePriceOffer: priceOffer with: anotherPriceOffer.
	self assert: priceOffersPersistenceSystem priceOffersCount equals: 1.
	priceOfferFromDatabase := priceOffersPersistenceSystem allPriceOffers anyOne.
	self
		assert: priceOffer minoristRange equals: anotherPriceOffer minoristRange;
		assert: priceOffer minoristPrice equals: anotherPriceOffer minoristPrice;
		assert: priceOffer mayoristRange equals: anotherPriceOffer mayoristRange;
		assert: priceOffer mayoristPrice equals: anotherPriceOffer mayoristPrice