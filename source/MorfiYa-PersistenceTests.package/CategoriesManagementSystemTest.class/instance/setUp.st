Initialization
setUp

	rootSystem := RootManagementSystem
		resolvingPersistenceWith: PersistenceSystem current.
	categoriesPersistenceSystem := CategoriesManagementSystem
		installOn: rootSystem.
	rootSystem persistenceSystem dropAllThenCreateSchema