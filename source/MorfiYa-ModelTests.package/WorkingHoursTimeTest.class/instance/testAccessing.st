tests
testAccessing
	| workingHours day |
	day := WeekDay friday.
	workingHours := WorkingHoursTime on: day from: 8 to: 20.
	self assert: workingHours workingDay equals: day.
	self assert: workingHours openingTime equals: 8.
	self assert: workingHours closingTime equals: 20.
	self assert: workingHours openingHours equals: 12