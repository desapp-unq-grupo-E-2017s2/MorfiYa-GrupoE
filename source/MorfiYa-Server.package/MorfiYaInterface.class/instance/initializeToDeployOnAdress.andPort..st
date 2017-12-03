initialization
initializeToDeployOnAdress: adressByteArray andPort: number

	self
		initializeSystems;
		initializeServerOnAdress: adressByteArray andPort: number;
		initializeRoutes;
		start