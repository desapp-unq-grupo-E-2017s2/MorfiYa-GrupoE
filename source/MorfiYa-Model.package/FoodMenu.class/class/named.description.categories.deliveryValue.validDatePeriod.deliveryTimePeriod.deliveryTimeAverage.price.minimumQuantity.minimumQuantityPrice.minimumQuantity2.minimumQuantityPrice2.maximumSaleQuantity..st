instance-creation
named: aName description: aDescription categories: manyCategories deliveryValue: aValue validDatePeriod: aPeriod deliveryTimePeriod: aDeliveryPeriod deliveryTimeAverage: aTimeAverage price: aPrice minimumQuantity: aMinimumQuantity minimumQuantityPrice: aMinimumQuantityPrice minimumQuantity2: anotherMinimumQuantity minimumQuantityPrice2: anotherMinimumQuantityPrice maximumSaleQuantity: aMaximumSaleQuantity
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
	self
		assertOverPrice: aPrice
		withMinimumQuantityPrice: aMinimumQuantityPrice
		andMinimumQuantityPrice2: anotherMinimumQuantityPrice.
	^ self new
		initializeName: aName
		description: aDescription
		categories: manyCategories
		deliveryValue: aValue
		validDatePeriod: aPeriod
		deliveryTimePeriod: aDeliveryPeriod
		deliveryTimeAverage: aTimeAverage
		price: aPrice
		minimumQuantity: aMinimumQuantity
		minimumQuantityPrice: aMinimumQuantityPrice
		minimumQuantity2: anotherMinimumQuantity
		minimumQuantityPrice2: anotherMinimumQuantityPrice
		maximumSaleQuantity: aMaximumSaleQuantity