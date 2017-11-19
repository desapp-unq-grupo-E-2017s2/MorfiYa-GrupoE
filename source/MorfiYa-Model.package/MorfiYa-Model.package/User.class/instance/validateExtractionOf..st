Validating
validateExtractionOf: anAmount
	anAmount > money
		ifTrue: [ MoneyTransactionFailed signal: 'Could not extract because of insuficient money' ]