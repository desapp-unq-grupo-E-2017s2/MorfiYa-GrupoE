baselines
baseline: spec

	<baseline>
	spec
		for: #common
		do: [ self setUpDependencies: spec.
			spec
				package: 'MorfiYa-Model'
					with: [ spec requires: #('Chalten' 'Buoy') ];
				package: 'MorfiYa-Tests' with: [ spec requires: 'MorfiYa-Model' ].
			spec
				group: 'Deployment' with: #('MorfiYa-Model');
				group: 'Development' with: #('Deployment' 'MorfiYa-Tests');
				group: 'default' with: #('Deployment') ]