Accessing
priceFor: aQuantity
	| price |
	(minoristRange rangeIncludes: aQuantity)
		ifTrue: [ price := aQuantity * minoristPrice ].
	(mayoristRange rangeIncludes: aQuantity)
		ifTrue: [ price := aQuantity * mayoristPrice ].
	price
		ifNil: [ NoPriceFound
				signal: 'No se encontro un precio en oferta para la cantidad: ' , aQuantity printString ].
	^ price