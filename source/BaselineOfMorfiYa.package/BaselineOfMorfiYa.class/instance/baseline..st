baselines
baseline: spec
	<baseline>
	spec
		for: #common
		do: [ self setUpDependencies: spec.
			spec
				package: 'MorfiYa-Model'with: [ spec requires: #('Buoy' 'Chalten') ];
				package: 'MorfiYa-ModelTests' with: [ spec requires: 'MorfiYa-Model' ];
				package: 'MorfiYa-Persistence'with: [ spec requires: 'GlorpDriverMySQL' ];
				package: 'MorfiYa-PersistenceTests' with: [ spec requires: 'MorfiYa-Persistence' ].
			spec
				group: 'Deployment' with: #('MorfiYa-Model' 'MorfiYa-Persistence');
				group: 'Development'
					with: #('Deployment' 'MorfiYa-ModelTests' 'MorfiYa-PersistenceTests');
				group: 'default' with: #('Development') ]
