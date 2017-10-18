tests
testInstanceCreationFailedBecauseOfWrongCuit
	| clientInfo |
	clientInfo := self contactInformation.
	self
		should: [ User
				identifiedBy: '2334456789'
				named: 'name'
				and: 'lastName'
				describedAs: clientInfo ]
		raise: InstanceCreationFailed
		withExceptionDo: [ :ex | self assert: ex messageText equals: 'El cuil debe tener 11 digitos y ser distinto a 0' ].
		
	self
		should: [ User
				identifiedBy: '00000000000'
				named: 'name'
				and: 'lastName'
				describedAs: clientInfo ]
		raise: InstanceCreationFailed
		withExceptionDo: [ :ex | self assert: ex messageText equals: 'El cuil debe tener 11 digitos y ser distinto a 0' ]