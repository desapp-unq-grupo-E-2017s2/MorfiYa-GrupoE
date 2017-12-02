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
				package: 'MorfiYa-PersistenceTests' with: [ spec requires: 'MorfiYa-Persistence' ];
				package: 'MorfiYa-Service' with: [ spec requires: #('MorfiYa-Model' 'MorfiYa-Persistence' 'Teapot') ];
				package: 'MorfiYa-Server' with: [ spec requires: #('MorfiYa-Service' 'Teapot') ];
				package: 'MorfiYa-ArchitectureTests' with: [ spec requires: #('MorfiYa-Server' 'MorfiYa-PersistenceTests' 'MorfiYa-ModelTests') ].
			spec
				group: 'Deployment' with: #('MorfiYa-Model' 'MorfiYa-Persistence' 'MorfiYa-Service' 'MorfiYa-Server');
				group: 'Development'
					with: #('Deployment' 'MorfiYa-ModelTests' 'MorfiYa-PersistenceTests');
				group: 'default' with: #('Development') ]
