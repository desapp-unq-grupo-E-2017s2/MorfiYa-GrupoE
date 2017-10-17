tests
testInvalidInterval

	self
		should: [ WorkingHoursTime on: Monday from: 9 to: 8 ]
		raise: InstanceCreationFailed
		withExceptionDo: [ :exception | self assert: exception messageText equals: 'El rango horario es invalido' ]