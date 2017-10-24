initialization
allUsers

	^ TeaResponse ok
		body: userManagementSystem allUsers;
		headers: self normalHeaders