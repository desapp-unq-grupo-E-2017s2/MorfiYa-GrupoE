adding
updateUserOfId: anId withUserFrom: aJsonUser

	| jsonUser user result |
	
	jsonUser := NeoJSONObject fromString: aJsonUser.
	user := User fromJson: jsonUser.
	result := userManagementSystem updateUserOfId: anId with: user.
	
	^ TeaResponse ok
		body: result;
		headers: self normalHeaders