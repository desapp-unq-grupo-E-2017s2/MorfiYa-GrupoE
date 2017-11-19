Instance Creation
of: aPriceOffer and: aFoodMenu
self validatePriceOf: aFoodMenu isHigherThanPricesOf: aPriceOffer .
	^ self new initializeOf: aPriceOffer and: aFoodMenu