*MorfiYa-Service
neoJsonMapping: aMapper

	aMapper
		for: self
		do: [ :mapping | mapping mapInstVars: #(id cuit name lastName money contactInformation) ]";
	 mapAllInstVarsFor: ContactInformation ."