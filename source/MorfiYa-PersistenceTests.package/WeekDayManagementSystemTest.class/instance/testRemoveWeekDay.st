Tests
testRemoveWeekDay
	| day |
	self assert: weekDayPersistenceSystem weekDayCount equals: 0.
	day := WeekDay monday.
	weekDayPersistenceSystem addWeekDay: day.
	self assert: weekDayPersistenceSystem weekDayCount equals: 1.
	weekDayPersistenceSystem removeWeekDay: day.
	self assert: weekDayPersistenceSystem weekDayCount equals: 0