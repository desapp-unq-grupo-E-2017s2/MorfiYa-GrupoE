Initialization
setUp
	persistenceSystem := GeneralPersistenceSystem start.
	FoodBusinessManagementSystem using: persistenceSystem .
	WeekDayManagementSystem using: persistenceSystem .
	WorkingHourManagementSystem using: persistenceSystem.
	FoodMenuesManagementSystem using: persistenceSystem .
	PriceOffersManagementSystem using: persistenceSystem .
	priceOfferAndMenuAssociationsSystem := PriceOfferAndMenuAssociationsManagementSystem
		using: persistenceSystem.
	persistenceSystem dropAllThenCreateSchema