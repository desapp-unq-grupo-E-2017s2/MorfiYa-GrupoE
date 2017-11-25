initialization
initialize

	usersController := UserController new.
	foodBusinessController := FoodBussinesController new.
	foodMenuController := FoodMenuController new.
	self initializePersistenceSystem.
	self initializeServer.
	self initializeRoutes