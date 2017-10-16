tests
testExtractMoneyFailedBecauseOfInsuficientMoney
	| customer contactInfo |
	
	contactInfo := ContactInformation
		adressedWith: 'Calle falsa 123'
		locatedIn: 'Springfield'
		withEmail: 'hernan.coronel@yahoo.com'
		andPhoneNumber: '42523060'.
	
	customer := Customer
		named: 'Hernan Coronel'
		identifiedBy: '27388419348'
		with: contactInfo.
		
	self
		should: [ customer extractMoney: 300 ]
		raise: MoneyTransactionFailed
		withExceptionDo: [ :exception | 
			self
				assert: exception messageText
				equals: 'Su saldo es menor a la cantidad que intenta extraer' ]