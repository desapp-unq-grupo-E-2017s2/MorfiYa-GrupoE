Initialization
initializeDeployingOn: aTeapotServer at: aBasePath withApiPath: anApiPath delegatingTo: aController
	
	server := aTeapotServer.
	basePath := aBasePath.
	apiPath := anApiPath.
	controller := aController.
	
	self
		initializeAuth0LoginOrRegisterService;
		initializeOptions