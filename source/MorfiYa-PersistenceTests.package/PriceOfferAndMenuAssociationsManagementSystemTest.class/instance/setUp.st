Initialization
setUp
	persistenceSystem := GeneralPersistenceSystem start.
	WeekDayManagementSystem using: persistenceSystem .
	WorkingHourManagementSystem using: persistenceSystem.
	FoodMenuesManagementSystem using: persistenceSystem .
	PriceOffersManagementSystem using: persistenceSystem .
	priceOfferAndMenuAssociationsSystem := PriceOfferAndMenuAssociationsManagementSystem
		using: persistenceSystem.
	persistenceSystem dropAllThenCreateSchema