tests
testIncorrectWeekDay

	self
		should: [ WorkingHoursTime on: 'sarasa' from: 9 to: 14 ]
		raise: InstanceCreationFailed
		withExceptionDo:
			[ :exception | self assert: exception messageText equals: '''sarasa'' no es un día valido' ]