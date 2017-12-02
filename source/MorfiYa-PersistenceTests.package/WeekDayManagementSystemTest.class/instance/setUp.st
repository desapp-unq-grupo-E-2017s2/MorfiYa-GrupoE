initialization
setUp

	rootSystem := RootManagementSystem resolvingPersistenceWith: PersistenceSystem current.
	FoodBusinessManagementSystem installOn: rootSystem.
	FoodMenuesManagementSystem installOn: rootSystem.
	WorkingHourManagementSystem installOn: rootSystem.
	weekDayPersistenceSystem := WeekDayManagementSystem installOn: rootSystem.
	rootSystem persistenceSystem dropAllThenCreateSchema