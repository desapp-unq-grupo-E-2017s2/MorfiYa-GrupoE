initialization
initializeRoutes
	GenericService
		deployingOn: server
		at: ''
		withApiPath: 'users'
		delegatingTo: (GenericController workingOn: rootSystem managing: User).
	GenericService
		deployingOn: server
		at: ''
		withApiPath: 'foodbusiness'
		delegatingTo: (GenericController workingOn: rootSystem managing: FoodBusiness).
	GenericService
		deployingOn: server
		at: ''
		withApiPath: 'foodmenu'
		delegatingTo: (GenericController workingOn: rootSystem managing: FoodMenu)