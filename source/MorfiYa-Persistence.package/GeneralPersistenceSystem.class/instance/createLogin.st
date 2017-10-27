Connection
createLogin
	^ Login new
		database: platform;
		username: 'root';
		password: 'root';
		connectString: 'localhost_morfiya';
		yourself