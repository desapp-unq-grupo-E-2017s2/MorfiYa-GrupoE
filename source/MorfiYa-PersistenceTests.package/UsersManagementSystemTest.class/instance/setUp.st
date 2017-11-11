initialization
setUp
	persistenceSystem := PersistenceSystem start.
	ContactInformationManagementSystem using: persistenceSystem .
	usersManagementSystem := UsersManagementSystem using: persistenceSystem.
	persistenceSystem dropAllThenCreateSchema