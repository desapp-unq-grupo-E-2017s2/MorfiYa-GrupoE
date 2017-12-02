Initialization
initializeToInstallOn: aRootSystem

	aRootSystem registerSystem: self.
	persistenceSystem := aRootSystem persistenceSystem.
	persistenceSystem addConfiguration: self configuration