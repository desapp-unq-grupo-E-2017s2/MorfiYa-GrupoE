Tests
testRemoveWeekDay
	| day |
	self assert: weekDayPersistenceSystem count equals: 0.
	day := WeekDay monday.
	weekDayPersistenceSystem add: day.
	self assert: weekDayPersistenceSystem count equals: 1.
	weekDayPersistenceSystem remove: day.
	self assert: weekDayPersistenceSystem count equals: 0