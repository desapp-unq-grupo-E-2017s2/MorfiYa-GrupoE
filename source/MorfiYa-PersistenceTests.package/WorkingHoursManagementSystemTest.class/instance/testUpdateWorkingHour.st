Tests
testUpdateWorkingHour

	| workingHour workingHourFromDatabase anotherWorkingHour |
	self assert: workingHoursPersistenceSystem workingHoursCount equals: 0.
	workingHour := self workingHour.
	anotherWorkingHour := self anotherWorkingHour.
	workingHoursPersistenceSystem addWorkingHour: workingHour.
	workingHoursPersistenceSystem updateWorkingHour: workingHour with: anotherWorkingHour.
	self assert: workingHoursPersistenceSystem workingHoursCount equals: 1.
	workingHourFromDatabase := workingHoursPersistenceSystem allWorkingHours anyOne.
	self
		assert: workingHourFromDatabase workingDay equals: anotherWorkingHour workingDay;
		assert: workingHourFromDatabase openingTime equals: anotherWorkingHour openingTime;
		assert: workingHourFromDatabase closingTime equals: anotherWorkingHour closingTime