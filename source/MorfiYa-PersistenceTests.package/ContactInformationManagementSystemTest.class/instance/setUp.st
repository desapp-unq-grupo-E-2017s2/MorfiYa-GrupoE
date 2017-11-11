initialization
setUp
	persistenceSystem := PersistenceSystem start.
	contactInformationManagementSystem := ContactInformationManagementSystem
		using: persistenceSystem.
	userManagementSystem := UsersManagementSystem using: persistenceSystem.
	persistenceSystem dropAllThenCreateSchema