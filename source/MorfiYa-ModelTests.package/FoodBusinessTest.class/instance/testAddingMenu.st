Tests
testAddingMenu
	| business menu |
	business := self business.
	menu := self menu.
	self deny: (business hasMenu: menu).
	business addMenu: menu.
	self assert: (business hasMenu: menu)