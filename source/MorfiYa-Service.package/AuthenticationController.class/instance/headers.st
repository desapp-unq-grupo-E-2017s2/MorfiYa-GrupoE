Defaults
headers

	^ {('Content-Type' -> 'application/json').
	('Accept' -> 'application/json').
	('Access-Control-Allow-Methods' -> 'POST, GET, OPTIONS, DELETE, PUT').
	('Access-Control-Allow-Origin' -> '*').
	('Access-Control-Allow-Headers'
		-> 'X-Requested-With, Content-Type, Origin, Authorization, Accept, Client-Security-Token, Accept-Encoding')}