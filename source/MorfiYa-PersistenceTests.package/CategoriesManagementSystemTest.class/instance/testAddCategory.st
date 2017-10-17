Tests
testAddCategory
	| category categoryFromDatabase |
	self assert: categoriesPersistenceSystem  categoriesCount equals: 0.
	category := Category sushi.
	categoriesPersistenceSystem addCategory: category.
	self assert: categoriesPersistenceSystem categoriesCount equals: 1.
	categoryFromDatabase := categoriesPersistenceSystem allCategories  anyOne.
	self assert: categoryFromDatabase equals: category