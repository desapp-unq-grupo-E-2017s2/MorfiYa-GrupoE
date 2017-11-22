Initialize - service
initializeOptions

	server
		OPTIONS: (self fullPathUsing: '/users') ->[:req| controller usersOptions];
		OPTIONS: (self fullPathUsing: '/users/<id>') -> [:req|controller usersOptions] 