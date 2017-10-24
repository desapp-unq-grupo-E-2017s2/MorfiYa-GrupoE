*MorfiYa-Service
fromJson: aJsonString

	^ (FoodBusiness
		named: (aJsonString at: #name)
		withLogo: (aJsonString at: #logo)
		mapLocation: (aJsonString at: #mapLocation)
		described: (aJsonString at: #description)
		webSite: (aJsonString at: #webSite)
		serviceTime: (aJsonString at: #servicetime)
		deliveryLocation: (aJsonString at: #deliveryLocation))
		id: (aJsonString at: #id);
		yourself