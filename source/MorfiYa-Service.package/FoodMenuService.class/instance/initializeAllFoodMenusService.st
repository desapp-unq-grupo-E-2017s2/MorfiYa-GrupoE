initialization
initializeAllFoodMenusService

	server GET: (self fullPathUsing: '/foodMenu') -> [:request| controller allFoodMenus]
