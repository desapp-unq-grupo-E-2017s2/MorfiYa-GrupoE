Validating
validateMinoristRange: aRange
	(aRange min < self minoristMinimum or: [ aRange max > self minoristMaximum ])
		ifTrue: [ InstanceCreationFailed signal: 'Minorist range should be between 10 and 40' ]