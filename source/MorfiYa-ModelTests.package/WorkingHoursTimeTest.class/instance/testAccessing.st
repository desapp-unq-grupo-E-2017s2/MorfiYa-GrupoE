tests
testAccessing

	|workingHours|
	
	workingHours := WorkingHoursTime on: Friday from: 8 to: 20.
	self assert: workingHours workingDay equals: Friday.
	self assert: workingHours openingTime equals: 8.
	self assert: workingHours closingTime equals: 20.
	self assert: workingHours openingHours equals: 12.