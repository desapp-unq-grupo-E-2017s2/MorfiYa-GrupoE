Tests
testRemovingMenu
	| business menu |
	business := self business.
	menu := self menu.
	self deny: (business hasMenu: menu).
	business addMenu: menu.
	self assert: (business hasMenu: menu).
	business removeMenu: menu.
	self deny: (business hasMenu: menu)