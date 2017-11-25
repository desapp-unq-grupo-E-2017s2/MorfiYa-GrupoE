adding
loginUserUsing: aJsonStringUser

	| jsonUser email password result |
	
	jsonUser := NeoJSONObject fromString: aJsonStringUser.
	email :=  jsonUser at: #email.
	password := jsonUser at: #password.
	result := userManagementSystem userOfEmail: email andPassword: password .
	
	^ TeaResponse ok
		body: result;
		headers: self normalHeaders