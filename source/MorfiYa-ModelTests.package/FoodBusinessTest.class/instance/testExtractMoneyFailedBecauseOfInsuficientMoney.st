tests
testExtractMoneyFailedBecauseOfInsuficientMoney
	| business |
	business := FoodBusiness
		named: 'McDonalds'
		withLogo: 'logo1'
		locationAt: 'direccion'
		address: 'Juncal 123'
		mapLocation: 127 @ 127
		described: 'aasdasdasadsadas daadsdasadsads asdsadsdasadsadsdssdasdasdadsadsadsadsadsasdsdds'
		webSite: 'www.facebook.com/pipi1'
		email: 'asd@asd.com'
		phone: '42522825'
		serviceTime: {((Monday to: Friday) -> (8 to: 20))} asDictionary
		deliveryLocation: 'direccion2'.
	self
		should: [ business extractMoney: 300 ]
		raise: MoneyTransactionFailed
		withExceptionDo: [ :exception | 
			self
				assert: exception messageText
				equals: 'Su saldo es menor a la cantidad que intenta extraer' ]