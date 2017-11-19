*MorfiYa-Service
neoJsonMapping: aMapper

	aMapper
		for: self
		do:
			[ :mapping | mapping mapInstVars: #(id name logo mapLocation description serviceTime deliveryLocation scores webSite menues) ]