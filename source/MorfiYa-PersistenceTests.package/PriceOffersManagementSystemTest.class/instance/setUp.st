Initialization
setUp
	persistenceSystem := PersistenceSystem start.
	priceOffersPersistenceSystem  := PriceOffersManagementSystem  using: persistenceSystem.
	persistenceSystem dropAllThenCreateSchema