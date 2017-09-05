tests
testEmailAddressWithInvalidDomain

	self
		should: [ EmailValidator current validate: 'ines.-sosa@gmail.sarasa' ]
		raise: InstanceCreationFailed
		withExceptionDo: [ :exeption | 
			self
				assert: exeption messageText 
				equals: 'La dirección de Correo es inválida, por favor ingrese una dirección valida.' ]