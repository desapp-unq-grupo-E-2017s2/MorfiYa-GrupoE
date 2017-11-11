Tests
testAddWorkingHour

	| workingHour workingHourFromDatabase |
	
	self assert: workingHoursPersistenceSystem workingHoursCount equals: 0.
	
	workingHour := self workingHour.
	workingHoursPersistenceSystem addWorkingHour: workingHour.
	self assert: workingHoursPersistenceSystem workingHoursCount equals: 1.
	
	workingHourFromDatabase := workingHoursPersistenceSystem allWorkingHours anyOne.
	self assert: workingHour equals: workingHourFromDatabase