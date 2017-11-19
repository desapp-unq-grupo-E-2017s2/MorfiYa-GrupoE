Initialize - service
initializeOptions

	server
		OPTIONS: (self fullPathUsing: '/users') -> controller usersOptions;
		OPTIONS: (self fullPathUsing: '/users/<id>') -> controller usersOptions 