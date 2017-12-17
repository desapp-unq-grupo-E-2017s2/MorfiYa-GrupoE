Actions
userWithEmail: anEmail

	| result |

	result := persistentObjectManagementSystem
		getOneSatisfying: [ :each | each contactInformation email = anEmail ].

	^ result isNil
		ifTrue: [ Error signal: 'No user found with that email' ]
		ifFalse: [ TeaResponse ok
				body: result;
				headers: self headers ]