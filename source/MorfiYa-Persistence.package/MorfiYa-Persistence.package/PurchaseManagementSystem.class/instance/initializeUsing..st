initialization
initializeUsing: aPersistenceSystem

	persistenceSystem := aPersistenceSystem.
	persistenceSystem addConfiguration: self configuration.