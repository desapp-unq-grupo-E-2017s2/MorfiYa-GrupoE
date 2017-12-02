initialization
setUp

	| rootSystem |

	rootSystem := RootManagementSystem resolvingPersistenceWith: PersistenceSystem current.
	ContactInformationManagementSystem installOn: rootSystem.
	usersManagementSystem := UsersManagementSystem installOn: rootSystem.
	rootSystem persistenceSystem dropAllThenCreateSchema