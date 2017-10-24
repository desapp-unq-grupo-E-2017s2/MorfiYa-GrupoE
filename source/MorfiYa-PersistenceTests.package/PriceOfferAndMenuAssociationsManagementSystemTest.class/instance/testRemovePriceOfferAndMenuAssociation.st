Tests
testRemovePriceOfferAndMenuAssociation
	| association |
	self
		assert: priceOfferAndMenuAssociationsSystem priceOfferAndMenuAssociationsCount
		equals: 0.
	association := self association.
	priceOfferAndMenuAssociationsSystem addPriceOfferAndMenuAssociation: association.
	self
		assert: priceOfferAndMenuAssociationsSystem priceOfferAndMenuAssociationsCount
		equals: 1.
	priceOfferAndMenuAssociationsSystem removePriceOfferAndMenuAssociation: association.
	self
		assert: priceOfferAndMenuAssociationsSystem priceOfferAndMenuAssociationsCount
		equals: 0