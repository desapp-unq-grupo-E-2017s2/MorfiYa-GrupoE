tests
testInvalidEmailAddress

	self
		should: [ ContactInformation
				adressedWith: 'Chiclana 933'
				locatedIn: 'Don Bosco'
				withEmail: 'pepito.com'
				password: 'asd'
				andPhoneNumber: 42523060 ]
		raise: InstanceCreationFailed
		withExceptionDo: [ :exeption | self assert: exeption messageText equals: 'La dirección de Correo es inválida, por favor ingrese una dirección valida.' ]