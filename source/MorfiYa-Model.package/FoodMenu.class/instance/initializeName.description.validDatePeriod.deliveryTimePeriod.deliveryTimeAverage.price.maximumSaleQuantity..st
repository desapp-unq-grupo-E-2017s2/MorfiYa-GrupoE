Initialization
initializeName: aName description: aDescription validDatePeriod: aPeriod deliveryTimePeriod: aDeliveryPeriod deliveryTimeAverage: aTimeAverage price: aPrice maximumSaleQuantity: aMaximumSaleQuantity
	name := aName.
	description := aDescription.
	validDatePeriod := aPeriod.
	deliveryTimeStart := aDeliveryPeriod min.
	deliveryTimeEnd := aDeliveryPeriod max.
	deliveryTimeAverage := aTimeAverage.
	price := aPrice.
	maximumSaleQuantity := aMaximumSaleQuantity