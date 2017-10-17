Initialization
setUp
	persistenceSystem := GeneralPersistenceSystem start.
	priceOfferAndMenuAssociationsSystem := PriceOfferAndMenuAssociationsManagementSystem
		using: persistenceSystem.
	persistenceSystem dropAllThenCreateSchema