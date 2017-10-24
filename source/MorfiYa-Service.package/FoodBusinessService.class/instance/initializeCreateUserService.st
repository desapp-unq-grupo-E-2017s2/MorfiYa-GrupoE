initialization
initializeCreateUserService

	server
		POST:
			(self fullPathUsing: '/foodBusiness')
				-> [ :request | controller addFoodBusinessFrom: request contents ]