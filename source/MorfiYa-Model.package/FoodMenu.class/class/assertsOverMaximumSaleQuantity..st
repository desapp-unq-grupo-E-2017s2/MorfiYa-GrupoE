instance-creation
assertsOverMaximumSaleQuantity: aValue

	aValue isNil
		ifTrue:
			[ InstanceCreationFailed signal: 'La cantidad máxima de ventas diarias no puede ser vacío' ]