tests
testExtractMoneyFailedBecauseOfInsuficientMoney
	| customer |
	customer := Customer
		named: 'Hernan Coronel'
		identifiedBy: '27388419348'
		with: 'hernan.coronel@yahoo.com'
		and: '01134908754'
		locatedIn: 'direccion'.
	self
		should: [ customer extractMoney: 300 ]
		raise: MoneyTransactionFailed
		withExceptionDo: [ :exception | 
			self
				assert: exception messageText
				equals: 'Su saldo es menor a la cantidad que intenta extraer' ]