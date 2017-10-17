initialization
setUp
	persistenceSystem := GeneralPersistenceSystem start.
	foodMenuPersistenceSystem := FoodMenuManagementSystem using: persistenceSystem.
	persistenceSystem dropAllThenCreateSchema