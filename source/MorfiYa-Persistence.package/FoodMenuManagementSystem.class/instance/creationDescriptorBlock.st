Configuring
creationDescriptorBlock
	^ [ :aDescriptor | 
	| table |
	table := self table.
	aDescriptor table: table.
	(aDescriptor newMapping: DirectMapping) from: #id to: (table fieldNamed: 'id').
	(aDescriptor newMapping: DirectMapping) from: #name to: (table fieldNamed: 'name').
	(aDescriptor newMapping: DirectMapping) from: #description to: (table fieldNamed: 'description').
"	(aDescriptor newMapping: DirectMapping) from: #categories to: (table fieldNamed: 'categories')."
	(aDescriptor newMapping: DirectMapping) from: #deliveryValue to: (table fieldNamed: 'deliveryValue').
"	(aDescriptor newMapping: DirectMapping) from: #validDatePerior to: (table fieldNamed: 'validDatePeriod'). "
"	(aDescriptor newMapping: DirectMapping) from: #deliveryTimePeriod to: (table fieldNamed: 'deliveryTimePeriod').	"
	(aDescriptor newMapping: DirectMapping) from: #deliveryTimeAverage to: (table fieldNamed: 'deliveryTimeAverage').
	(aDescriptor newMapping: DirectMapping) from: #price to: (table fieldNamed: 'price').
	(aDescriptor newMapping: DirectMapping) from: #minimumQuantity to: (table fieldNamed: 'minimumQuantity').
	(aDescriptor newMapping: DirectMapping) from: #minimumQuantityPrice to: (table fieldNamed: 'minimumQuantityPrice').
	(aDescriptor newMapping: DirectMapping) from: #minimumQuantity2 to: (table fieldNamed: 'minimumQuantity2').
	(aDescriptor newMapping: DirectMapping) from: #minimumQuantityPrice2 to: (table fieldNamed: 'minimumQuantityPrice2').
	(aDescriptor newMapping: DirectMapping) from: #maximumSaleQuantity to: (table fieldNamed: 'maximumSaleQuantity').]
