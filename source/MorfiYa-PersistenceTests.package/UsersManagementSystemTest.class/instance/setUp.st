initialization
setUp
	persistenceSystem := GeneralPersistenceSystem start.
	usersManagementSystem := UsersManagementSystem using: persistenceSystem.
	persistenceSystem dropAllThenCreateSchema