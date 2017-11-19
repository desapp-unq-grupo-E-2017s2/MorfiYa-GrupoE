Tests
testAccessing
	| beer burguer green pizza sushi turnover vegan |
	beer := Category beer.
	burguer := Category burguer.
	green := Category green.
	pizza := Category pizza.
	sushi := Category sushi.
	turnover := Category turnover.
	vegan := Category vegan.
	self
		assert: beer description equals: 'Cerveza';
		assert: burguer description equals: 'Hamburguesa';
		assert: green description equals: 'Green';
		assert: pizza description equals: 'Pizza';
		assert: sushi description equals: 'Sushi';
		assert: turnover description equals: 'Empanada';
		assert: vegan description equals: 'Vegano'