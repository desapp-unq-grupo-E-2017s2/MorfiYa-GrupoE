Initialization
setUp

	| rootSystem |
	rootSystem := RootManagementSystem
		resolvingPersistenceWith: PersistenceSystem current.
	categoriesPersistenceSystem := CategoriesManagementSystem
		installOn: rootSystem.
	rootSystem persistenceSystem dropAllThenCreateSchema