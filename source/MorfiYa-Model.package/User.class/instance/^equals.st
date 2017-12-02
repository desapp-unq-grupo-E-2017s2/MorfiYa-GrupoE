Accessing
= anObject

	^ (anObject isA: self class)
		ifTrue: [ contactInformation = anObject contactInformation
				and:
					[ cuit = anObject cuit and: [ lastName = anObject lastName and: [ name = anObject name ] ] ] ]
		ifFalse: [ super = anObject ]