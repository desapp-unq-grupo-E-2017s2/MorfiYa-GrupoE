initialization
setUp
	persistenceSystem := GeneralPersistenceSystem start.
	FoodMenuesManagementSystem using: persistenceSystem .
	WorkingHourManagementSystem using:persistenceSystem .
	weekDayPersistenceSystem := WeekDayManagementSystem  using: persistenceSystem.
	persistenceSystem dropAllThenCreateSchema