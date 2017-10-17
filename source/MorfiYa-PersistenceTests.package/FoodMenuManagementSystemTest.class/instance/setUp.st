initialization
setUp
	persistenceSystem := GeneralPersistenceSystem start.
	foodMenuPersistenceSystem := FoodMenuesManagementSystem using: persistenceSystem.
	persistenceSystem dropAllThenCreateSchema