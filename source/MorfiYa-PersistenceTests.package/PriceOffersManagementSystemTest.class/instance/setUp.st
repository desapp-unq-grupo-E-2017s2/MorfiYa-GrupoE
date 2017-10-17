Initialization
setUp
	persistenceSystem := GeneralPersistenceSystem start.
	priceOffersPersistenceSystem  := PriceOffersManagementSystem  using: persistenceSystem.
	persistenceSystem dropAllThenCreateSchema