baselines
setUpDependencies: spec

	spec
		baseline: 'Buoy'
		with: [ spec
				repository: 'github://ba-st/Buoy:master/source';
				loads: #('Deployment') ].
	spec
		baseline: 'Chalten'
		with: [ spec
				repository: 'github://ba-st/chalten:v6.0.0/repository';
				loads: #('Core') ]