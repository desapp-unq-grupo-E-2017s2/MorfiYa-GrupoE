initialization
initialize

	GeneralPersistenceSystem start.
	usersController := UserController new.
	foodBusinessController := FoodBussinesController new.
	foodMenuController := FoodMenuController new.
	self initializeServer.
	self initializeRoutes