initialization
setUp
	persistenceSystem := GeneralPersistenceSystem start.
	ContactInformationManagementSystem using: persistenceSystem .
	usersManagementSystem := UsersManagementSystem using: persistenceSystem.
	persistenceSystem dropAllThenCreateSchema