initialization
weekDayMappingFor: aDescriptor
	(aDescriptor newMapping: OneToOneMapping)
		attributeName: #workingDay;
		referenceClass: WeekDay;
		beExclusive