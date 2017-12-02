Tests
testAllPackagesAreLoaded
	| loadedPackages |
	loadedPackages := self allMorfiYaLoadedPackages.

	self assert: loadedPackages size equals: self morfiYaPackagesAmount