accessing
totalAmount

	^menus
		keysAndValuesDo: [ :menu :quant | 
			| total |
			total := 0.
			total + (menu price * quant) ]