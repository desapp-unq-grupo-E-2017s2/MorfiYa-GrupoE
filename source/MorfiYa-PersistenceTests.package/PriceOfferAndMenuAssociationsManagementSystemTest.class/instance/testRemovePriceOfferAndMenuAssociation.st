Tests
testRemovePriceOfferAndMenuAssociation
	| association |
	self
		assert: priceOfferAndMenuAssociationsSystem count
		equals: 0.
	association := self association.
	priceOfferAndMenuAssociationsSystem add: association.
	self
		assert: priceOfferAndMenuAssociationsSystem count
		equals: 1.
	priceOfferAndMenuAssociationsSystem remove: association.
	self
		assert: priceOfferAndMenuAssociationsSystem count
		equals: 0