tests
testInvalidWhenPhoneNumberTooShort


	self
		should: [ ContactInformation
				adressedWith: 'Chiclana 933'
				locatedIn: 'Don Bosco'
				withEmail: 'pepito@gmail.com'
				andPhoneNumber: '42' ]
		raise: InstanceCreationFailed
		withExceptionDo: [ :exeption | self assert: exeption messageText equals: 'El numero debe tener un mínimo de 6 digitos(contando el codigo de area)' ]