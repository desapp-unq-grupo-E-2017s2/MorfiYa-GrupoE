Test Support
association
	| priceOffer menu |
	priceOffer := self priceOffer.
	menu := self menu.
	^ PriceOfferAndMenuAssociation of: priceOffer and: menu