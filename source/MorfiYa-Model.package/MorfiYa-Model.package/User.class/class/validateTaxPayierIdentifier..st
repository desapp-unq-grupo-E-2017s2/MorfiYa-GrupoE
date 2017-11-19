Validating
validateTaxPayierIdentifier: aTaxpayerUniqueKey

	(aTaxpayerUniqueKey size = 11 and: [ aTaxpayerUniqueKey ~= '00000000000' ])
		ifFalse: [ InstanceCreationFailed signal: 'El cuil debe tener 11 digitos y ser distinto a 0' ]