Comparing
= anObject

	^ (anObject isA: self class)
		ifTrue: [ name = anObject name
				and: [ description = anObject description
						and: [ validDatePeriod = anObject validDatePeriod
								and: [ (deliveryTimeStart to: deliveryTimeEnd) = anObject deliveryTimePeriod
										and: [ deliveryTimeAverage = anObject deliveryTimeAverage ] ] ] ] ]
		ifFalse: [ super = anObject ]