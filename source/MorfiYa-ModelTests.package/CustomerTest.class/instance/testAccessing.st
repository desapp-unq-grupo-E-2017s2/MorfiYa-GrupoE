tests
testAccessing
	| customer |
	customer := Customer
		named: 'Hernan Coronel'
		identifiedBy: '27388419348'
		with: 'hernan.coronel@yahoo.com'
		and: '01134908754'
		locatedIn: 'direccion'.
	self
		assert: customer name equals: 'Hernan Coronel';
		assert: customer identifier equals: '27388419348';
		assert: customer email equals: 'hernan.coronel@yahoo.com';
		assert: customer telephone equals: '01134908754';
		assert: customer location equals: 'direccion';
		assert: customer money equals: 0