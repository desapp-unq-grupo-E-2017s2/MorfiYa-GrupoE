tests
testInvalidWhenPhoneNumberTooLong


	self
		should: [ ContactInformation
				adressedWith: 'Chiclana 933'
				locatedIn: 'Don Bosco'
				withEmail: 'pepito@gmail.com'
				password: 'asd'
				andPhoneNumber: '420984627291759738' ]
		raise: InstanceCreationFailed
		withExceptionDo: [ :exeption | self assert: exeption messageText equals: 'El numero debe tener como máximo 15 digitos(contando el codigo de area)' ]