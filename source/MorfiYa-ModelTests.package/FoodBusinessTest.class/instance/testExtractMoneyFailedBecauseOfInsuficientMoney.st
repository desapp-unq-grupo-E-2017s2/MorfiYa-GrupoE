tests
testExtractMoneyFailedBecauseOfInsuficientMoney
	| business contactInfo |
	
	contactInfo := ContactInformation
		adressedWith: 'Calle falsa 123'
		locatedIn: 'Springfield'
		withEmail: 'hernan.coronel@yahoo.com'
		andPhoneNumber: '42523060'.
	
	business := FoodBusiness
		named: 'McDonalds'
		withLogo: 'logo1'
		mapLocation: 127 @ 127
		described:
			'aasdasdasadsadas daadsdasadsads asdsadsdasadsadsdssdasdasdadsadsadsadsadsasdsdds'
		webSite: 'www.facebook.com/pipi1'
		serviceTime: {((Monday to: Friday) -> (8 to: 20))} asDictionary
		deliveryLocation: 'direccion2'
		with: contactInfo.
		
	self
		should: [ business extractMoney: 300 ]
		raise: MoneyTransactionFailed
		withExceptionDo: [ :exception | 
			self
				assert: exception messageText
				equals: 'Su saldo es menor a la cantidad que intenta extraer' ]