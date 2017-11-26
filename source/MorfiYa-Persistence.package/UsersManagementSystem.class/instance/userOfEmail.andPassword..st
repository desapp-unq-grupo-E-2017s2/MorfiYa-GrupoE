Querying
userOfEmail: email andPassword: password
"Se rompe encapsulamiento por un problema de mapping. -apiorno"

	^ generalPersistenceSystem
		readOneOf: self describedClass
		satisfying: [ :each | self halt.each  email = email AND: [ each  password = password ] ]