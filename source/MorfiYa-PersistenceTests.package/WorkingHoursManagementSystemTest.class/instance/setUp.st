initialization
setUp

	rootSystem := RootManagementSystem resolvingPersistenceWith: PersistenceSystem current.
	FoodBusinessManagementSystem installOn: rootSystem.
	FoodMenuesManagementSystem installOn: rootSystem.
	workingHoursPersistenceSystem := WorkingHourManagementSystem installOn: rootSystem.
	WeekDayManagementSystem installOn: rootSystem.
	rootSystem persistenceSystem dropAllThenCreateSchema