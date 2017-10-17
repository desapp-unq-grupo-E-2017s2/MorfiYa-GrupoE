Configuring
creationDescriptorBlock
	^ [ :aDescriptor | 
	| table |
	table := self table.
	aDescriptor table: table.
	(aDescriptor newMapping: DirectMapping) from: #id to: (table fieldNamed: 'id').
	(aDescriptor newMapping: OneToOneMapping)
		attributeName: #priceOffer;
		referenceClass: PriceOffer.
	(aDescriptor newMapping: OneToOneMapping)
		attributeName: #foodMenu;
		referenceClass: FoodMenu ]