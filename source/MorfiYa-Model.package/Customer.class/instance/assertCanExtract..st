Asserting
assertCanExtract: aMoneyAMount
	money < aMoneyAMount
		ifTrue: [ MoneyTransactionFailed signal: 'Su saldo es menor a la cantidad que intenta extraer' ]