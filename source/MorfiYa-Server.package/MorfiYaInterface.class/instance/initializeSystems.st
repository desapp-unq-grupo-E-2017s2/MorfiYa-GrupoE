initialization
initializeSystems

	PersistenceSystem reset.
	rootSystem := RootManagementSystem resolvingPersistenceWith: PersistenceSystem current.
	ContactInformationManagementSystem installOn: rootSystem .
	UsersManagementSystem installOn: rootSystem.
	FoodBusinessManagementSystem installOn: rootSystem.
	FoodMenuesManagementSystem installOn: rootSystem.
	rootSystem persistenceSystem dropAllThenCreateSchema