FoodBusiness-Config
descriptorForFoodBusiness: aDescriptor

	| table |
	
	table := self tableNamed: 'foodbusiness'.
	
	aDescriptor table: table.
	"Refactorizar esta chorrada de metodos horrible. -isosa"
	(aDescriptor newMapping: DirectMapping) from: #id to: (table fieldNamed: 'id').
	(aDescriptor newMapping: DirectMapping) from: #name to: (table fieldNamed: 'name').
	(aDescriptor newMapping: DirectMapping) from: #logo to: (table fieldNamed: 'logo').
	(aDescriptor newMapping: DirectMapping) from: #location to: (table fieldNamed: 'location').
	(aDescriptor newMapping: DirectMapping) from: #address to: (table fieldNamed: 'address').
	(aDescriptor newMapping: DirectMapping) from: #mapLocation to: (table fieldNamed: 'map_Location').
	(aDescriptor newMapping: DirectMapping) from: #description to: (table fieldNamed: 'description').
	(aDescriptor newMapping: DirectMapping) from: #webSite to: (table fieldNamed: 'web_site').
	(aDescriptor newMapping: DirectMapping) from: #email to: (table fieldNamed: 'email').
	(aDescriptor newMapping: DirectMapping) from: #phoneNumber to: (table fieldNamed: 'phone_number').
	(aDescriptor newMapping: DirectMapping) from: #serviceTime to: (table fieldNamed: 'service_time').
	(aDescriptor newMapping: DirectMapping) from: #deliveryLocation to: (table fieldNamed: 'delivery_location').
	(aDescriptor newMapping: DirectMapping) from: #scores to: (table fieldNamed: 'scores')