Initialization
setUp

	rootSystem := RootManagementSystem resolvingPersistenceWith: PersistenceSystem current.
	priceOffersPersistenceSystem := PriceOffersManagementSystem installOn: rootSystem.
	rootSystem persistenceSystem dropAllThenCreateSchema