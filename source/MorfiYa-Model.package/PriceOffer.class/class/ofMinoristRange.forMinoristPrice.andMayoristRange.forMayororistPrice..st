Instance Creation
ofMinoristRange: aRange forMinoristPrice: aPrice andMayoristRange: anotherRange forMayororistPrice: anotherPrice
	self
		validateMinoristRange: aRange;
		validateMayoristRange: anotherRange;
		validate: aPrice isHiggerThan: anotherPrice.
	^ self new
		initializeOfMinoristRange: aRange
		forMinoristPrice: aPrice
		andMayoristRange: anotherRange
		forMayororistPrice: anotherPrice