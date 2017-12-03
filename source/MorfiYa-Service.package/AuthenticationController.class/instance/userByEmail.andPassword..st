Actions
userByEmail: anEmail andPassword: aPassword

	| result |

	result := persistentObjectManagementSystem
		getOneSatisfying: [ :each | 
			each contactInformation email = anEmail
				AND: [ each contactInformation password = aPassword ] ].

	^ TeaResponse ok
		body: result;
		headers: self headers