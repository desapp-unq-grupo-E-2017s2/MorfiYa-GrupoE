initialization
setUp
	persistenceSystem := GeneralPersistenceSystem start.
	WeekDayManagementSystem using: persistenceSystem .
	FoodMenuesManagementSystem using: persistenceSystem .
	WorkingHourManagementSystem using: persistenceSystem .
	foodBusinessManagementSystem := FoodBusinessManagementSystem using: persistenceSystem.
	persistenceSystem dropAllThenCreateSchema