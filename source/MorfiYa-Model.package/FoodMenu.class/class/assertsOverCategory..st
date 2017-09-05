instance-creation
assertsOverCategory: aCategory
	aCategory isEmpty
		ifTrue: [ InstanceCreationFailed signal: 'El menú debe pertenecer al menos a una categoría' ]