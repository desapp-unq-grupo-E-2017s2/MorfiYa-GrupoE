private
initializeAuth0LoginOrRegisterService

 server POST: self fullPath -> [ :req | 
	|jsonObject email user|
	jsonObject := NeoJSONObject fromString: req contents.
	user := self userFromGoogleProfile: jsonObject .
	email := (jsonObject at: #nickname) , '@gmail.com'.
	[controller userWithEmail: email] on: Error do: [ :signal | controller createUser: user ]
	
	]