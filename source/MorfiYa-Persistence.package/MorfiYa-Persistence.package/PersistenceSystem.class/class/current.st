accessing
current
	^ current  ifNil: [ self newInstance ] ifNotNil: [ :system | system ]