baselines
setUpDependencies: spec

	spec
		configuration: 'Teapot'
		with: [ spec
				versionString: #stable;
				repository: 'http://smalltalkhub.com/mc/zeroflag/Teapot/main' ].
	spec
		baseline: 'Buoy'
		with: [ spec
				repository: 'github://ba-st/Buoy:master/source';
				loads: #('Deployment') ].

spec
		baseline: 'GlorpDriverMySQL'
		with: [ spec
				repository: 'github://apiorno/GlorpDriverMySQL:master/source';
loads: #('Deployment') ].
