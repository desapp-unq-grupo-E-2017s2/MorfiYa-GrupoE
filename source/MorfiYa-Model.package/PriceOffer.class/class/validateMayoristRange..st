Validating
validateMayoristRange: aRange 
	(aRange min < self mayoristMinimum or:[aRange max > self mayoristMaximum]) ifTrue:[InstanceCreationFailed signal: 'Mayorist range should be between 41 and 150']