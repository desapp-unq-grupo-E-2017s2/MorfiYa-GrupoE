baselines
baseline: spec
	<baseline>
	spec
		for: #common
		do: [ spec
				package: 'MorfiYa-Model';
				package: 'MorfiYa-Tests' with: [ spec requires: 'MorfiYa-Model' ].
			spec
				group: 'Deployment' with: #('MorfiYa-Model');
				group: 'Development' with: #('Deployment' 'MorfiYa-Tests');
				group: 'default' with: #('Deployment') ]