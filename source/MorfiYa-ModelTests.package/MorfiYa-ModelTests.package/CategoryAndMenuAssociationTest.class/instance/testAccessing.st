Tests
testAccessing
	| association category menu |
	category := self category.
	menu := self menu.
	association := CategoryAndMenuAssociation of: category and: menu.
	self
		assert: association category equals: category;
		assert: association menu equals: menu