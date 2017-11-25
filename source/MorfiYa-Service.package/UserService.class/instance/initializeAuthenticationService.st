initialization
initializeAuthenticationService

	server
		POST: (self fullPathUsing: '/authenticate') -> [ :request | controller loginUserUsing: request contents ]