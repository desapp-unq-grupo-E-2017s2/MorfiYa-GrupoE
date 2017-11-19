*MorfiYa-Service
fromJson: aJsonString

	^ (FoodMenu
		named: (aJsonString at: #name)
		description: (aJsonString at: #description)
		validDatePeriod: (aJsonString at: #datePeriod)
		deliveryTimePeriod: (aJsonString at: #deliveryTimePeriod)
		deliveryTimeAverage: (aJsonString at: #deliveryTimeAverage)
		price: (aJsonString at: #price)
		maximumSaleQuantity: (aJsonString at: #maximumSaleQuantity))
		id: (aJsonString at: #id);
		yourself