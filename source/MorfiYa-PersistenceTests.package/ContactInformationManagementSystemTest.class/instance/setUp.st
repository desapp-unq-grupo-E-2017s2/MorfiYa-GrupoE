initialization
setUp

	| rootSystem |

	rootSystem := RootManagementSystem resolvingPersistenceWith: PersistenceSystem current.
	contactInformationManagementSystem := ContactInformationManagementSystem installOn: rootSystem.
	userManagementSystem := UsersManagementSystem installOn: rootSystem.
	rootSystem persistenceSystem dropAllThenCreateSchema