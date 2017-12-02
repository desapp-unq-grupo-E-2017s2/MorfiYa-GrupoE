Tests
testUpdatePriceOfferAndMenuAssociation
	| association anotherAssociation associationFromDatabase |
	self
		assert: priceOfferAndMenuAssociationsSystem count
		equals: 0.
	association := self association.
	anotherAssociation := self anotherAssociation.
	priceOfferAndMenuAssociationsSystem add: association.
	priceOfferAndMenuAssociationsSystem
		update: association
		with: anotherAssociation.
	self
		assert: priceOfferAndMenuAssociationsSystem count
		equals: 1.
	associationFromDatabase := priceOfferAndMenuAssociationsSystem
		getAll  anyOne.
	self
		assert: associationFromDatabase priceOffer equals: anotherAssociation priceOffer;
		assert: associationFromDatabase menu equals: anotherAssociation menu