Test Support
anotherAssociation

	| priceOffer menu |
	priceOffer := self anotherPriceOffer.
	menu := self menu.
	^ PriceOfferAndMenuAssociation of: priceOffer and: menu