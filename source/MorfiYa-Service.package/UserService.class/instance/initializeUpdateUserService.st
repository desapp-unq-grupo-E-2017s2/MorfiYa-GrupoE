initialization
initializeUpdateUserService
	server
		PUT:
			(self fullPathUsing: '/users/<id>')
				-> [ :request | controller updateUserOfId: (request at: #id) withUserFrom: request contents ]