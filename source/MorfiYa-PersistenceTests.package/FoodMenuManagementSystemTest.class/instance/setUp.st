initialization
setUp

	rootSystem := RootManagementSystem resolvingPersistenceWith: PersistenceSystem current.
	WeekDayManagementSystem installOn: rootSystem.
	foodMenuPersistenceSystem := FoodMenuesManagementSystem installOn: rootSystem.
	WorkingHourManagementSystem installOn: rootSystem.
	FoodBusinessManagementSystem installOn: rootSystem.
	rootSystem persistenceSystem dropAllThenCreateSchema