Configuring
serviceTimeMappingFor: aDescriptor

	(aDescriptor newMapping: OneToManyMapping)
		attributeName: #serviceTime;
		referenceClass: WorkingHoursTime;
		collectionType: OrderedCollection;
		orderBy: #id;
		beExclusive