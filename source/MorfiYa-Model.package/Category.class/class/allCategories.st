utils
allCategories
	| categories |
	categories := OrderedCollection new.
	categories
		add: self beer;
		add: self burguer;
		add: self green;
		add: self pizza;
		add: self sushi;
		add: self turnover;
		add: self vegan.
	^ categories