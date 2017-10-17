Tests
testRemovePriceOffer
	| priceOffer |
	self assert: priceOffersPersistenceSystem priceOffersCount equals: 0.
	priceOffer := self priceOffer.
	priceOffersPersistenceSystem addPriceOffer: priceOffer.
	self assert: priceOffersPersistenceSystem priceOffersCount equals: 1.
	priceOffersPersistenceSystem removePriceOffer: priceOffer.
	self assert: priceOffersPersistenceSystem priceOffersCount equals: 0