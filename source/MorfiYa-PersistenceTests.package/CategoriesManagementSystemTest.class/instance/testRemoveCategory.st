Tests
testRemoveCategory
	| category |
	self assert: categoriesPersistenceSystem categoriesCount equals: 0.
	category := Category sushi.
	categoriesPersistenceSystem addCategory: category.
	self assert: categoriesPersistenceSystem categoriesCount equals: 1.
	categoriesPersistenceSystem removeCategory: category.
	self assert: categoriesPersistenceSystem categoriesCount equals: 0