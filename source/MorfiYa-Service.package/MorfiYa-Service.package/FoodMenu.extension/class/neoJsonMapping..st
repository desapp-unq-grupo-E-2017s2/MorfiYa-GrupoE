*MorfiYa-Service
neoJsonMapping: aMapper

	aMapper
		for: self
		do: [ :mapping | 
			mapping
				mapInstVars:
					#(id name description validDatePeriod deliveryTimeStart deliveryTimeEnd deliveryTimeAverage price maximumSaleQuantity) ]