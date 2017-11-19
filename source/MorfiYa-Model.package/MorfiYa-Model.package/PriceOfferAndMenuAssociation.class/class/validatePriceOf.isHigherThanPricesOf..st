Validating
validatePriceOf: aFoodMenu isHigherThanPricesOf: aPriceOffer
	aPriceOffer minoristPrice > aFoodMenu price
		ifTrue: [ InstanceCreationFailed signal: 'Menu price should be higher than price offer prices' ]