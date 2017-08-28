Adding
addNonWorkingDay: aDay from: aFixedDate to: aFixedDate3
	^ timelineFilter addRule: (timelineFilter dayRule: aDay) from: aFixedDate to: aFixedDate3