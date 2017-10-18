Tests
testAddPriceOfferAndMenuAssociation
	| association associationFromDatabase |
	self
		assert: priceOfferAndMenuAssociationsSystem priceOfferAndMenuAssociationsCount
		equals: 0.
	association := self association.
	priceOfferAndMenuAssociationsSystem addPriceOfferAndMenuAssociation: association.
	self
		assert: priceOfferAndMenuAssociationsSystem priceOfferAndMenuAssociationsCount
		equals: 1.
	associationFromDatabase := priceOfferAndMenuAssociationsSystem
		allPriceOfferAndMenuAssociations anyOne.
	self assert: associationFromDatabase equals: association