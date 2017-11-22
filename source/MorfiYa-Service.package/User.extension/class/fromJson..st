*MorfiYa-Service
fromJson: aNeoJSon

	^ (User
		identifiedBy: (aNeoJSon at: #cuit)
		named: (aNeoJSon at: #name)
		and: (aNeoJSon at: #lastName)
		describedAs: (self contactInformationFrom: aNeoJSon ))
		id: (aNeoJSon at: #id);
		yourself