adding
addUserFrom: aJsonStringUser

	| jsonUser user result |
	
	jsonUser := NeoJSONObject fromString: aJsonStringUser.
	^[user := User fromJson: jsonUser.
	result := userManagementSystem addUser: user.
	
	TeaResponse ok
		body: result;
		headers: self normalHeaders] on: Error do:[:error | self requestExecutionFailedOn: error] 