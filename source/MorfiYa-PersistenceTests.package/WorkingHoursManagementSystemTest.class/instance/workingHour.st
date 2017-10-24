Test Support
workingHour

	| day |
	day := WeekDay friday.
	^ WorkingHoursTime on: day from: 8 to: 20