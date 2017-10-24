Tests
testAddWeekDay
	| day dayFromDatabase |
	self assert: weekDayPersistenceSystem weekDayCount equals: 0.
	day := WeekDay monday.
	weekDayPersistenceSystem addWeekDay: day.
	self assert: weekDayPersistenceSystem weekDayCount equals: 1.
	dayFromDatabase := weekDayPersistenceSystem allWeekDays anyOne.
	self assert: dayFromDatabase equals: day