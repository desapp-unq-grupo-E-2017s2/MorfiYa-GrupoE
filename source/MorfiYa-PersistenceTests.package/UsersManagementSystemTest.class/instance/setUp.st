initialization
setUp

	rootSystem := RootManagementSystem resolvingPersistenceWith: PersistenceSystem current.
	ContactInformationManagementSystem installOn: rootSystem.
	usersManagementSystem := UsersManagementSystem installOn: rootSystem.
	rootSystem persistenceSystem dropAllThenCreateSchema