initialization
initializeCreateUserService

	server
		POST: (self fullPathUsing: '/users') -> [ :request | controller addUserFrom: request contents ]