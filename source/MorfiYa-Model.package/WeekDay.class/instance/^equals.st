Testing
= anObject

	^ (anObject isA: self class)
		ifTrue: [ description = anObject description ]
		ifFalse: [ super = anObject ]