initialization
initializeCreateFoodMenuService

	server
		POST:
			(self fullPathUsing: '/foodMenu')
				-> [ :request | controller addFoodMenuFrom: request contents ]