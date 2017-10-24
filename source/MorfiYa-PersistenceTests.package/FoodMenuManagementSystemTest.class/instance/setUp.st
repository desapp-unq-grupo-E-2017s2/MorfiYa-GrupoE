initialization
setUp
	persistenceSystem := GeneralPersistenceSystem start.
	FoodBusinessManagementSystem using: persistenceSystem .
	WeekDayManagementSystem using: persistenceSystem .
	WorkingHourManagementSystem using: persistenceSystem.
	foodMenuPersistenceSystem := FoodMenuesManagementSystem using: persistenceSystem.
	persistenceSystem dropAllThenCreateSchema