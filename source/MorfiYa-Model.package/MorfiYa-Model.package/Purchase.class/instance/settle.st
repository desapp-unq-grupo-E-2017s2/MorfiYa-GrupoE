accessing
settle

	|totalAmount|
	
	totalAmount := self totalAmount.
	customer extract: totalAmount.
	vendor deposit: totalAmount.
	self renewStock.