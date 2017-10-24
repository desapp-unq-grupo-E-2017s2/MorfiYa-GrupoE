initialization
initializeDeployingOn: aTeapotServer at: aBasePath delegatingTo: aController

	basePath := aBasePath.
	server := aTeapotServer.
	controller := aController.
	
	self
		initializeAllFoodMenusService;
		initializeCreateFoodMenuService;
		initializeOptions