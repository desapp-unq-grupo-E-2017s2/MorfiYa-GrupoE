Querying
getById: anId

	^ PersistenceSystem current findOneOf: self describedClass satisfying: [ :each | each id = anId ]