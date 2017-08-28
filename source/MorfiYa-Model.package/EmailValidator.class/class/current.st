accessing
current

	uniqueInstance ifNil: [ uniqueInstance := self new ].
	^uniqueInstance