initialization
initialize

	GeneralPersistenceSystem start.
	usersController := UserController new.
	foodBusinessController := FoodBussinesController new.
	self initializeServer.
	self initializeRoutes