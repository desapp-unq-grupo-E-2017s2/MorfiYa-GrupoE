initialization
setUp
	
	persistenceSystem := GeneralPersistenceSystem start.
	foodMenuPersistenceSystem := FoodMenuManagementSystem using: persistenceSystem .
	persistenceSystem dropAllThenCreateSchema.
	
	burguerCategory := OrderedCollection new.
	burguerCategory add: Category burguer.
	