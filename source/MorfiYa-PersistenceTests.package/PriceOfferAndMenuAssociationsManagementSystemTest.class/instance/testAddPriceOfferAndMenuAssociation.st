Tests
testAddPriceOfferAndMenuAssociation
	| association associationFromDatabase |
	self
		assert: priceOfferAndMenuAssociationsSystem count
		equals: 0.
	association := self association.
	priceOfferAndMenuAssociationsSystem add: association.
	self
		assert: priceOfferAndMenuAssociationsSystem count
		equals: 1.
	associationFromDatabase := priceOfferAndMenuAssociationsSystem
		getAll  anyOne.
	self assert: associationFromDatabase equals: association