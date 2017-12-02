Initialization
setUp

	| rootSystem |

	rootSystem := RootManagementSystem resolvingPersistenceWith: PersistenceSystem current.
	FoodBusinessManagementSystem installOn: rootSystem.
	FoodMenuesManagementSystem installOn: rootSystem.
	WeekDayManagementSystem installOn: rootSystem.
	WorkingHourManagementSystem installOn: rootSystem.
	PriceOffersManagementSystem installOn: rootSystem.
	priceOfferAndMenuAssociationsSystem := PriceOfferAndMenuAssociationsManagementSystem installOn: rootSystem.
	rootSystem persistenceSystem dropAllThenCreateSchema