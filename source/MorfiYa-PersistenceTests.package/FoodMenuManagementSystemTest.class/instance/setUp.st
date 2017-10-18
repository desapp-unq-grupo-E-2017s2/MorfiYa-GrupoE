initialization
setUp
	persistenceSystem := GeneralPersistenceSystem start.
	WeekDayManagementSystem using: persistenceSystem .
	WorkingHourManagementSystem using: persistenceSystem.
	foodMenuPersistenceSystem := FoodMenuesManagementSystem using: persistenceSystem.
	persistenceSystem dropAllThenCreateSchema