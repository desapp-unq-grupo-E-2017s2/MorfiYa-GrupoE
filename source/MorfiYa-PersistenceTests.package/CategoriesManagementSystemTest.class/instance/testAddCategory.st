Tests
testAddCategory
	| category categoryFromDatabase |
	self assert: categoriesPersistenceSystem  count equals: 0.
	category := Category sushi.
	categoriesPersistenceSystem add: category.
	self assert: categoriesPersistenceSystem count equals: 1.
	categoryFromDatabase := categoriesPersistenceSystem getAll   anyOne.
	self assert: categoryFromDatabase equals: category