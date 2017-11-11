initialization
initializeDatabaseConfigurations

	userManagementSystem := UsersManagementSystem using: PersistenceSystem current.
	contactInformationManagementSystem := ContactInformationManagementSystem using: PersistenceSystem current.