initialization
initializeSystems

	rootSystem := RootManagementSystem resolvingPersistenceWith: PersistenceSystem current.
	UsersManagementSystem installOn: rootSystem.
	FoodBusinessManagementSystem installOn: rootSystem.
	FoodMenuesManagementSystem installOn: rootSystem.
	rootSystem persistenceSystem dropAllThenCreateSchema