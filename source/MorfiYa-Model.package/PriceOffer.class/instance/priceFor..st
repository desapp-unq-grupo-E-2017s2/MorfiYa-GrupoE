Accessing
priceFor: aQuantity
	| price |
	(self minoristRange rangeIncludes: aQuantity)
		ifTrue: [ price := aQuantity * minoristPrice ].
	(self mayoristRange rangeIncludes: aQuantity)
		ifTrue: [ price := aQuantity * mayoristPrice ].
	price
		ifNil: [ NoPriceFound
				signal: 'No se encontro un precio en oferta para la cantidad: ' , aQuantity printString ].
	^ price