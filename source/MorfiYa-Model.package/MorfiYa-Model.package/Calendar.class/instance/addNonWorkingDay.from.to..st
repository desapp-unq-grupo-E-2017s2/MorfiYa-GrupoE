Adding
addNonWorkingDay: aDay from: aFixedDate to: anotherFixedDate
	^ timelineFilter addRule: (timelineFilter dayRule: aDay) from: aFixedDate to: anotherFixedDate