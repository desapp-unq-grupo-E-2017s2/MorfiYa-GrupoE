initialization
initializeDatabaseConfigurations

	foodMenuManagementSystem := FoodMenuManagementSystemTest using: GeneralPersistenceSystem current.
	GeneralPersistenceSystem current dropAllThenCreateSchema 