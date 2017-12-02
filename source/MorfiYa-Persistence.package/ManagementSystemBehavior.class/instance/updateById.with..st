Managing
updateById: anId with: anObject

	^ PersistenceSystem current update: (self getById: anId) with: anObject