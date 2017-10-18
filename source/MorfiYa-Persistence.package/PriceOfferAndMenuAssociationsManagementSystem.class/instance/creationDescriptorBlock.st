Configuring
creationDescriptorBlock

	^ [ :aDescriptor | 
	| table |
	table := self table.
	aDescriptor table: table.
	(aDescriptor newMapping: DirectMapping) from: #id to: (table fieldNamed: 'id').
	(aDescriptor newMapping: OneToOneMapping)
		attributeName: #priceOffer;
		referenceClass: PriceOffer;
		join:
			(Join
				from: (table fieldNamed: #priceOfferId)
				to: ((self relatedObjectTableNamed: #PRICE_OFFER) fieldNamed: #id));
		beExclusive.
	(aDescriptor newMapping: OneToOneMapping)
		attributeName: #foodMenu;
		referenceClass: FoodMenu;
		join:
			(Join
				from: (table fieldNamed: #foodMenuId)
				to: ((self relatedObjectTableNamed: #FOOD_MENU) fieldNamed: #id));
		beExclusive ]