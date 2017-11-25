Querying
userOfEmail: email andPassword: password

	^ generalPersistenceSystem
		readOneOf: self describedClass
		satisfying: [ :each | each email = email and: [ each password = password ] ]