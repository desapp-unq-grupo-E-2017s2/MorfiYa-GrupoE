tests
testEmailAddressWithoutAtSign

	self
		should: [ EmailValidator current validate: 'sarasa.com' ]
		raise: InstanceCreationFailed
		withExceptionDo: [ :exeption |
			self
				assert: exeption messageText 
				equals: 'La dirección de Correo es inválida, por favor ingrese una dirección valida.' ]