initialization
setUp
	persistenceSystem := GeneralPersistenceSystem start.
	FoodBusinessManagementSystem using: persistenceSystem .
	FoodMenuesManagementSystem using: persistenceSystem .
	WeekDayManagementSystem using: persistenceSystem .
	workingHoursPersistenceSystem := WorkingHourManagementSystem using: persistenceSystem.
	persistenceSystem dropAllThenCreateSchema