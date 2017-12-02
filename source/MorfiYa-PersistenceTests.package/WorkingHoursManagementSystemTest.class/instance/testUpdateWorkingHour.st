Tests
testUpdateWorkingHour

	| workingHour workingHourFromDatabase anotherWorkingHour |
	self assert: workingHoursPersistenceSystem count equals: 0.
	workingHour := self workingHour.
	anotherWorkingHour := self anotherWorkingHour.
	workingHoursPersistenceSystem add: workingHour.
	workingHoursPersistenceSystem update: workingHour with: anotherWorkingHour.
	self assert: workingHoursPersistenceSystem count equals: 1.
	workingHourFromDatabase := workingHoursPersistenceSystem getAll  anyOne.
	self
		assert: workingHourFromDatabase workingDay equals: anotherWorkingHour workingDay;
		assert: workingHourFromDatabase openningTime equals: anotherWorkingHour openningTime;
		assert: workingHourFromDatabase closingTime equals: anotherWorkingHour closingTime