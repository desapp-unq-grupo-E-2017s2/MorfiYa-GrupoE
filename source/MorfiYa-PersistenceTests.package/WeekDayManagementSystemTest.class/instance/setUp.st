initialization
setUp
	persistenceSystem := GeneralPersistenceSystem start.
	FoodBusinessManagementSystem using: persistenceSystem .
	FoodMenuesManagementSystem using: persistenceSystem .
	WorkingHourManagementSystem using:persistenceSystem .
	weekDayPersistenceSystem := WeekDayManagementSystem  using: persistenceSystem.
	persistenceSystem dropAllThenCreateSchema