Tests
testAddWorkingHour

	| workingHour workingHourFromDatabase |
	
	self assert: workingHoursPersistenceSystem count equals: 0.
	
	workingHour := self workingHour.
	workingHoursPersistenceSystem add: workingHour.
	self assert: workingHoursPersistenceSystem count equals: 1.
	
	workingHourFromDatabase := workingHoursPersistenceSystem getAll  anyOne.
	self assert: workingHour equals: workingHourFromDatabase