accessing
assertOverMenus: aDictionary
	aDictionary keys isEmpty 
		ifTrue: [ InstanceCreationFailed signal: 'Debe comprar al menos un menu' ].