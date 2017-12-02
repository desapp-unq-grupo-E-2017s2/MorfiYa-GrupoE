initialization
setUp

	| rootSystem |

	rootSystem := RootManagementSystem resolvingPersistenceWith: PersistenceSystem current.
	WeekDayManagementSystem installOn: rootSystem.
	FoodMenuesManagementSystem installOn: rootSystem.
	WorkingHourManagementSystem installOn: rootSystem.
	foodBusinessManagementSystem := FoodBusinessManagementSystem installOn: rootSystem.
	rootSystem persistenceSystem dropAllThenCreateSchema