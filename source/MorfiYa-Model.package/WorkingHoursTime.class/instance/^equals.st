Testing
= anObject
	^ (anObject isA: self class)
		ifTrue: [ workingDay = anObject workingDay
				and: [ openingTime = anObject openningTime and: [ closingTime = anObject closingTime ] ] ]
		ifFalse: [ super = anObject ]