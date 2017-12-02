Tests
testUpdatePriceOffer
	| priceOffer anotherPriceOffer priceOfferFromDatabase |
	self assert: priceOffersPersistenceSystem count equals: 0.
	priceOffer := self priceOffer.
	anotherPriceOffer := self anotherPriceOffer.
	priceOffersPersistenceSystem add: priceOffer.
	priceOffersPersistenceSystem update: priceOffer with: anotherPriceOffer.
	self assert: priceOffersPersistenceSystem count equals: 1.
	priceOfferFromDatabase := priceOffersPersistenceSystem getAll  anyOne.
	self
		assert: priceOffer minoristRange equals: anotherPriceOffer minoristRange;
		assert: priceOffer minoristPrice equals: anotherPriceOffer minoristPrice;
		assert: priceOffer mayoristRange equals: anotherPriceOffer mayoristRange;
		assert: priceOffer mayoristPrice equals: anotherPriceOffer mayoristPrice