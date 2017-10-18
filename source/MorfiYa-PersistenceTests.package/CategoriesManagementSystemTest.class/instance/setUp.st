Initialization
setUp
	persistenceSystem := GeneralPersistenceSystem start.
	categoriesPersistenceSystem := CategoriesManagementSystem using: persistenceSystem.
	persistenceSystem dropAllThenCreateSchema