tests
testInvalidInterval

	self
		should: [ WorkingHoursTime on: WeekDay monday from: 9 to: 8 ]
		raise: InstanceCreationFailed
		withExceptionDo: [ :exception | self assert: exception messageText equals: 'El rango horario es invalido' ]