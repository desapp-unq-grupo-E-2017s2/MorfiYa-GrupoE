initialization
initializeAllUsersService

	server
		GET: (self fullPathUsing: '/foodBusiness') -> [ :request | controller allFoodBusiness ]