Initialization
setUp
	persistenceSystem := PersistenceSystem start.
	categoriesPersistenceSystem := CategoriesManagementSystem using: persistenceSystem.
	persistenceSystem dropAllThenCreateSchema