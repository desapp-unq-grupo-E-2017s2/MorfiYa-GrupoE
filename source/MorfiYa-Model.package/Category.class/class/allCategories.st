private
allCategories
	| categories |
	categories := Dictionary new.
	categories
		at: 'beer' put: self initializeBeer;
		at: 'burguer' put: self initializeBurguer;
		at: 'green' put: self initializeGreen;
		at: 'pizza' put: self initializePizza;
		at: 'sushi' put: self initializeSushi;
		at: 'turnover' put: self initializeTurnover;
		at: 'vegan' put: self initializeVegan.
	^ categories