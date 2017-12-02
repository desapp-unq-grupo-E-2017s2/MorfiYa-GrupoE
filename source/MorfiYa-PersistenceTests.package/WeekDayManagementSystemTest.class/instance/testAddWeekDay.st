Tests
testAddWeekDay
	| day dayFromDatabase |
	self assert: weekDayPersistenceSystem count equals: 0.
	day := WeekDay monday.
	weekDayPersistenceSystem add: day.
	self assert: weekDayPersistenceSystem count equals: 1.
	dayFromDatabase := weekDayPersistenceSystem getAll  anyOne.
	self assert: dayFromDatabase equals: day