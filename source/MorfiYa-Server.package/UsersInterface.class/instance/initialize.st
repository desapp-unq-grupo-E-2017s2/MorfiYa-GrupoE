initialization
initialize

	GeneralPersistenceSystem start.
	usersController := UserController new.
	self initializeServer.
	self initializeRoutes