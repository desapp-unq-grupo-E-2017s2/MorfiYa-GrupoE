Initialize - service
initializeAllUsersService

	server GET: (self fullPathUsing: '/user') -> [:request | controller allUsers ]