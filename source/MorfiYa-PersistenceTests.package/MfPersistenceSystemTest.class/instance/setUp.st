initialization
setUp
	persistenceSystem := MfPersistenceSystem start.
	persistenceSystem dropAllThenCreateSchema