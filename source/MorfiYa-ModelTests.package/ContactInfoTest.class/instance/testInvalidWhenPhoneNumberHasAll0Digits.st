tests
testInvalidWhenPhoneNumberHasAll0Digits


	self
		should: [ ContactInformation
				adressedWith: 'Chiclana 933'
				locatedIn: 'Don Bosco'
				withEmail: 'pepito@gmail.com'
				andPhoneNumber: '00000000000' ]
		raise: InstanceCreationFailed
		withExceptionDo: [ :exeption | self assert: exeption messageText equals: 'El numero no puede contener todos sus digitos "0"' ]