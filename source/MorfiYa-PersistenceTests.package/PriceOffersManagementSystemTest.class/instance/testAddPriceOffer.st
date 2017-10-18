Tests
testAddPriceOffer
	| priceOffer priceOfferFromDatabase |
	self assert: priceOffersPersistenceSystem priceOffersCount equals: 0.
	priceOffer := self priceOffer.
	priceOffersPersistenceSystem addPriceOffer: priceOffer.
	self assert: priceOffersPersistenceSystem priceOffersCount equals: 1.
	priceOfferFromDatabase := priceOffersPersistenceSystem allPriceOffers anyOne.
	self assert: priceOfferFromDatabase equals: priceOffer