instance-creation
named: aName description: aDescription categories: manyCategories deliveryValue: aValue datePeriod: aPeriod deliveryTimePeriod: aDeliveryPeriod deliveryTimeAverage: aTimeAverage price: aPrice minQuantity: aMinimumQuantity minQuantityPrice: aMinimumQuantityPrice minQuantity2: anotherMinimumQuantity minQuantityPrice2: anotherMinimumQuantityPrice maxSaleQuantity: aMaximumSaleQuantity

	self assertsOverName: aName.
	self assertsOverDescription: aDescription.
	self assertsOverCategory: manyCategories.
	self assertsOverDeliveryValue: aValue.
	self assertsOverValidDatePeriod: aPeriod.
	self assertsOverDeliveryTimeAverage: aTimeAverage.
	self assertsOverMinimumQuantity: aMinimumQuantity.
	self assertsOverMinimumQuantityPrice: aMinimumQuantityPrice.
	self assertsOverMinimumQuantity2: anotherMinimumQuantity.
	self assertsOverMinimumQuantityPrice2: anotherMinimumQuantityPrice.
	self assertsOverMaximumSaleQuantity: aMaximumSaleQuantity.
	self assertOverPrice: aPrice withMinimumQuantityPrice: aMinimumQuantityPrice andMinimumQuantityPrice2: anotherMinimumQuantityPrice.
	^ self new
		initializeName: aName
		description: aDescription
		categories: manyCategories
		deliveryValue: aValue
		datePeriod: aPeriod
		deliveryTimePeriod: aDeliveryPeriod
		deliveryTimeAverage: aTimeAverage
		price: aPrice
		minQuantity: aMinimumQuantity
		minQuantityPrice: aMinimumQuantityPrice
		minQuantity2: anotherMinimumQuantity
		minQuantityPrice2: anotherMinimumQuantityPrice
		maxSaleQuantity: aMaximumSaleQuantity