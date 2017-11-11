initialization
setUp
	persistenceSystem := PersistenceSystem start.
	FoodBusinessManagementSystem using: persistenceSystem .
	FoodMenuesManagementSystem using: persistenceSystem .
	WeekDayManagementSystem using: persistenceSystem .
	workingHoursPersistenceSystem := WorkingHourManagementSystem using: persistenceSystem.
	persistenceSystem dropAllThenCreateSchema