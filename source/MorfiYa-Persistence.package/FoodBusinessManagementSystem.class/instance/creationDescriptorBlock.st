Configuring
creationDescriptorBlock

	^ [ :aDescriptor | 
		
	| table |
	table := self tableNamed: 'foodbusiness'.
	aDescriptor table: table.
	
	(aDescriptor newMapping: DirectMapping) from: #id to: (table fieldNamed: 'id').
	(aDescriptor newMapping: DirectMapping) from: #name to: (table fieldNamed: 'name').
	(aDescriptor newMapping: DirectMapping) from: #logo to: (table fieldNamed: 'logo').
	(aDescriptor newMapping: DirectMapping) from: #mapLocation to: (table fieldNamed: 'map_Location').
	(aDescriptor newMapping: DirectMapping) from: #description to: (table fieldNamed: 'description').
	(aDescriptor newMapping: DirectMapping) from: #webSite to: (table fieldNamed: 'web_site').
	self serviceTimeMappingFor: aDescriptor.
	(aDescriptor newMapping: DirectMapping) from: #deliveryLocation to: (table fieldNamed: 'delivery_location').
	self contactInformationMappingFor: aDescriptor.
	(aDescriptor newMapping: DirectMapping) from: #scores to: (table fieldNamed: 'scores') ]