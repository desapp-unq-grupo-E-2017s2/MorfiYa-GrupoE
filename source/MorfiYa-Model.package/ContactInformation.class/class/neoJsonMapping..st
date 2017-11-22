Instance Creation
neoJsonMapping: aMapper

	aMapper
		for: self
		do: [ :mapping | mapping mapInstVars: #(id address email phoneNumber locality) ]