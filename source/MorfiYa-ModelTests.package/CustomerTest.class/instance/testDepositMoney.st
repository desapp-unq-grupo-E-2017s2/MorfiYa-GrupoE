tests
testDepositMoney
	| customer |
	customer := Customer
		named: 'Hernan Coronel'
		identifiedBy: '27388419348'
		with: 'hernan.coronel@yahoo.com'
		and: '01134908754'
		locatedIn: 'direccion'.
	self assert: customer money equals: 0.
	customer depositMoney: 500.
	self assert: customer money equals: 500