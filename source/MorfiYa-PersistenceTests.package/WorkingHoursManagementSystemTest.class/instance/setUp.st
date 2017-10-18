initialization
setUp
	persistenceSystem := GeneralPersistenceSystem start.
	FoodMenuesManagementSystem using: persistenceSystem .
	WeekDayManagementSystem using: persistenceSystem .
	workingHoursPersistenceSystem := WorkingHourManagementSystem using: persistenceSystem.
	persistenceSystem dropAllThenCreateSchema