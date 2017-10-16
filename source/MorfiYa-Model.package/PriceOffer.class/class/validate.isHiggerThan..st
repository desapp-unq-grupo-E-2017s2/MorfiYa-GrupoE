Validating
validate: aMinoristPrice isHiggerThan: aMayoristPrice
	aMinoristPrice < aMayoristPrice
		ifTrue: [ InstanceCreationFailed signal: 'Minorist price should be lower than mayorist price' ]