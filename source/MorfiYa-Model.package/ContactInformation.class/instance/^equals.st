Accessing
= anObject

	^ (anObject isA: self class)
		ifTrue: [ address = anObject address
				and: [ email = anObject email
						and: [ locality = anObject locality
								and: [ password = anObject password and: [ phoneNumber = anObject phoneNumber ] ] ] ] ]
		ifFalse: [ super = anObject ]