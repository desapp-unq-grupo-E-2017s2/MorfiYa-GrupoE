Test Support
allMorfiYaLoadedPackages

	^ (MCWorkingCopy allManagers
		collect: [ :workingCopy | workingCopy package ])
		select: [ :package | package name includesSubstring: 'MorfiYa' ]