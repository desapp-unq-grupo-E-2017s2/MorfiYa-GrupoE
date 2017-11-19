initialization
initializeDatabaseConfigurations

	foodMenuManagementSystem := FoodMenuesManagementSystem using: PersistenceSystem current.
	weekDayManagementSystem := WeekDayManagementSystem using: PersistenceSystem current.
	workingHourManagementsystem := WorkingHourManagementSystem using: PersistenceSystem current