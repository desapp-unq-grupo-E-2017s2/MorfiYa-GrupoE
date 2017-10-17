Testing
= anotherMenu
	^ name = anotherMenu name
		and: [ description = anotherMenu description
				and: [ categories = anotherMenu categories
						and: [ deliveryValue = anotherMenu deliveryValue
								and: [ validDatePeriod = anotherMenu validDatePeriod
										and: [ deliveryTimePeriod = anotherMenu deliveryTimePeriod
												and: [ deliveryTimeAverage = anotherMenu deliveryTimeAverage ] ] ] ] ] ]