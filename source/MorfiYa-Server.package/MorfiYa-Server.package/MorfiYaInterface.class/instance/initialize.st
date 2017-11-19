initialization
initialize

	usersController := UserController new.
	foodBusinessController := FoodBussinesController new.
	foodMenuController := FoodMenuController new.
	self initializeDatabase.
	self initializeServer.
	self initializeRoutes