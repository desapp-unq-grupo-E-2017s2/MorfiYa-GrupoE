*MorfiYa-Service
neoJsonMapping: aMapper

	aMapper
		for: self
		do: [ :mapping | mapping mapInstVars: #(id address email password phoneNumber locality) ]