Configuring
creationDescriptorBlock
	^ [ :aDescriptor | 
	| table |
	table := self table.
	aDescriptor table: table.
	(aDescriptor newMapping: DirectMapping) from: #id to: (table fieldNamed: 'id').
	(aDescriptor newMapping: DirectMapping)
		from: #minoristRangeStart
		to: (table fieldNamed: 'minoristRangeStart').
	(aDescriptor newMapping: DirectMapping)
		from: #minoristRangeEnd
		to: (table fieldNamed: 'minoristRangeEnd').
	(aDescriptor newMapping: DirectMapping)
		from: #minoristPrice
		to: (table fieldNamed: 'minoristPrice').
	(aDescriptor newMapping: DirectMapping)
		from: #mayoristRangeStart
		to: (table fieldNamed: 'mayoristRangeStart').
	(aDescriptor newMapping: DirectMapping)
		from: #mayoristRangeEnd
		to: (table fieldNamed: 'mayoristRangeEnd').
	(aDescriptor newMapping: DirectMapping)
		from: #mayoristPrice
		to: (table fieldNamed: 'mayoristPrice') ]