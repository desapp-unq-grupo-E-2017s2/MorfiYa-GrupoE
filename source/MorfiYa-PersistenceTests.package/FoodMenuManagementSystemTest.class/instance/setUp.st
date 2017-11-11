initialization
setUp

	persistenceSystem := PersistenceSystem start.
	WeekDayManagementSystem using: persistenceSystem.
	WorkingHourManagementSystem using: persistenceSystem.
	FoodBusinessManagementSystem using: persistenceSystem .
	foodMenuPersistenceSystem := FoodMenuesManagementSystem using: persistenceSystem.
	persistenceSystem dropAllThenCreateSchema