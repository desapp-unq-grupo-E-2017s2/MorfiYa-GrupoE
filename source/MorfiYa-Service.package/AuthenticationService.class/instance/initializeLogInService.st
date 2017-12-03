private
initializeLogInService

 server POST: self fullPath -> [ :req | 
	|jsonObject email password|
	jsonObject := NeoJSONObject fromString: req contents.
	email := jsonObject at: #email.
	password := jsonObject at: #password.
	controller userByEmail: email andPassword: password  ]