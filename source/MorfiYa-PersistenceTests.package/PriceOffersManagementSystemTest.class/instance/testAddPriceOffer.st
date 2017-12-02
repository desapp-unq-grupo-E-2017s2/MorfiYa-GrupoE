Tests
testAddPriceOffer
	| priceOffer priceOfferFromDatabase |
	self assert: priceOffersPersistenceSystem count equals: 0.
	priceOffer := self priceOffer.
	priceOffersPersistenceSystem add: priceOffer.
	self assert: priceOffersPersistenceSystem count equals: 1.
	priceOfferFromDatabase := priceOffersPersistenceSystem getAll  anyOne.
	self assert: priceOfferFromDatabase equals: priceOffer