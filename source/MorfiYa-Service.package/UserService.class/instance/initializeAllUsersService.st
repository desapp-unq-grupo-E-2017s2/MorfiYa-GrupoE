initialization
initializeAllUsersService

	server GET: (self fullPathUsing: '/users') -> [:request | controller allUsers ]