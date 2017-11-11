Instance Creation
named: aName description: aDescription validDatePeriod: aPeriod deliveryTimePeriod: aDeliveryPeriod deliveryTimeAverage: aTimeAverage price: aPrice maximumSaleQuantity: aMaximumSaleQuantity

	self assertsOverName: aName.
	self assertsIsValidDescription: aDescription.
	self assertsOverValidDatePeriod: aPeriod.
	self assertsOverDeliveryTimeAverage: aTimeAverage.
	self assertsOverMaximumSaleQuantity: aMaximumSaleQuantity.

	^ self new
		initializeName: aName
		description: aDescription
		validDatePeriod: aPeriod
		deliveryTimePeriod: aDeliveryPeriod
		deliveryTimeAverage: aTimeAverage
		price: aPrice
		maximumSaleQuantity: aMaximumSaleQuantity