Configuring
creationModelBlock
	^ [ :aModel | 
	aModel
		newAttributeNamed: #id;
		newAttributeNamed: #minoristRangeStart;
		newAttributeNamed: #minoristRangeEnd;
		newAttributeNamed: #minoristPrice;
		newAttributeNamed: #mayoristRangeStart;
		newAttributeNamed: #mayoristRangeEnd;
		newAttributeNamed: #mayoristPrice ]