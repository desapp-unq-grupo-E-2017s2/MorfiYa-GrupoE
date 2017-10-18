Initialize - service
initializeUpdateUserService
	server
		PUT:
			(self fullPathUsing: '/user/<id>')
				-> [ :request | controller updateUserOfId: (request at: #id) withUserFrom: request contents ]