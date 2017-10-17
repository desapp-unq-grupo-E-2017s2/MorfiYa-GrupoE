Configuring
contactInformationMappingFor: aDescriptor

	(aDescriptor newMapping: OneToOneMapping)
		attributeName: #contactInformation;
		referenceClass: ContactInformation;
		beExclusive