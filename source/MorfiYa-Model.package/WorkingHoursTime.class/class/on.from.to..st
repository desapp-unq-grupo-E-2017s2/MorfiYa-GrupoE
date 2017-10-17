Instance Creation
on: aDayOfTheWeek from: anOpeningHour to: aClosinghour

	self assertIsDayOfTheWeek: aDayOfTheWeek.
	self assertValidOpeningHoursFor: anOpeningHour and: aClosinghour.
	
	^ self new initializeOn: aDayOfTheWeek from: anOpeningHour to: aClosinghour