Actions
createUser: anUser

	| result |

	result := persistentObjectManagementSystem add: anUser.

	^ TeaResponse ok
		body: result;
		headers: self headers