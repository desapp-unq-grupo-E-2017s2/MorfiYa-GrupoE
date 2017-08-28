validation
validate: anEmailAddress

	^ ((self validateEmailStructureOf: anEmailAddress)
		and: [ self validateDomainOf: anEmailAddress ])
		ifFalse: [ InstanceCreationFailed
				signal:
					'La dirección de Correo es inválida, por favor ingrese una dirección valida.' ]