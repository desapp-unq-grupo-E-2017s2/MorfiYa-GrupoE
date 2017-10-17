initialization
setUp
	persistenceSystem := GeneralPersistenceSystem start.
	customerPersistenceSystem := CustomersManagementSystem using: persistenceSystem.
	persistenceSystem dropAllThenCreateSchema