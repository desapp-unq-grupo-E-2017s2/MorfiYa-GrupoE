Tests
testRemoveCategory
	| category |
	self assert: categoriesPersistenceSystem count equals: 0.
	category := Category sushi.
	categoriesPersistenceSystem add: category.
	self assert: categoriesPersistenceSystem count equals: 1.
	categoriesPersistenceSystem remove: category.
	self assert: categoriesPersistenceSystem count equals: 0