Querying
getOneSatisfying: aBlock

	^ PersistenceSystem current findOneOf: self describedClass satisfying: aBlock