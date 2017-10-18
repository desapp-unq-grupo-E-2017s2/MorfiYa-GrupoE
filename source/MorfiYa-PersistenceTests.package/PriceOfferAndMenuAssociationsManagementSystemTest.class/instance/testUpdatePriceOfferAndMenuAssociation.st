Tests
testUpdatePriceOfferAndMenuAssociation
	| association anotherAssociation associationFromDatabase |
	self
		assert: priceOfferAndMenuAssociationsSystem priceOfferAndMenuAssociationsCount
		equals: 0.
	association := self association.
	anotherAssociation := self anotherAssociation.
	priceOfferAndMenuAssociationsSystem addPriceOfferAndMenuAssociation: association.
	priceOfferAndMenuAssociationsSystem
		updatePriceOfferAndMenuAssociation: association
		with: anotherAssociation.
	self
		assert: priceOfferAndMenuAssociationsSystem priceOfferAndMenuAssociationsCount
		equals: 1.
	associationFromDatabase := priceOfferAndMenuAssociationsSystem
		allPriceOfferAndMenuAssociations anyOne.
	self
		assert: associationFromDatabase priceOffer equals: anotherAssociation priceOffer;
		assert: associationFromDatabase menu equals: anotherAssociation menu