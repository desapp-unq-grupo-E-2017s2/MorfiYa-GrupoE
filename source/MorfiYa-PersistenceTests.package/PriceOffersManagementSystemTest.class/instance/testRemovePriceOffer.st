Tests
testRemovePriceOffer
	| priceOffer |
	self assert: priceOffersPersistenceSystem count equals: 0.
	priceOffer := self priceOffer.
	priceOffersPersistenceSystem add: priceOffer.
	self assert: priceOffersPersistenceSystem count equals: 1.
	priceOffersPersistenceSystem remove: priceOffer.
	self assert: priceOffersPersistenceSystem count equals: 0