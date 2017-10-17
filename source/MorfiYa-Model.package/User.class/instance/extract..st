Actions
extract: anAmount
	self validateExtractionOf: anAmount.
	money := money - anAmount