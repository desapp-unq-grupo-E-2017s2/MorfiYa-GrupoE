Initialize - service
initializeCreateUserService

	server
		POST: (self fullPathUsing: '/user') -> [ :request | controller addUserFrom: request contents ]