Tests
testAccessing
	| association priceOffer menu |
	priceOffer := self priceOffer.
	menu := self menu.
	association := PriceOfferAndMenuAssociation of: priceOffer and: menu.
	self
		assert: association priceOffer equals: priceOffer;
		assert: association menu equals: menu