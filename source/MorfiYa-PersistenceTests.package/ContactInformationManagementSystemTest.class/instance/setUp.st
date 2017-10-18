initialization
setUp
	persistenceSystem := GeneralPersistenceSystem start.
	contactInformationManagementSystem := ContactInformationManagementSystem
		using: persistenceSystem.
	persistenceSystem dropAllThenCreateSchema