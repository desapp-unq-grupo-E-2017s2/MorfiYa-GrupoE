Comparing
= anotherMenu
	^ name = anotherMenu name
		and: [ description = anotherMenu description
				and: [ deliveryValue = anotherMenu deliveryValue
						and: [ validDatePeriod = anotherMenu validDatePeriod
								and: [ (deliveryTimeStart to: deliveryTimeEnd) = anotherMenu deliveryTimePeriod
										and: [ deliveryTimeAverage = anotherMenu deliveryTimeAverage ] ] ] ] ]