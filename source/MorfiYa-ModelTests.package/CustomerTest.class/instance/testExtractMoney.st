tests
testExtractMoney
	| customer |
	customer := Customer
		named: 'Hernan Coronel'
		identifiedBy: '27388419348'
		with: 'hernan.coronel@yahoo.com'
		and: '01134908754'
		locatedIn: 'direccion'.
	customer depositMoney: 500.
	customer extractMoney: 300.
	self assert: customer money equals: 200