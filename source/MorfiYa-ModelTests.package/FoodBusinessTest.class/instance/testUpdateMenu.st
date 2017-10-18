tests
testUpdateMenu
	| business menu anotherMenu |
	business := self business.
	menu := self menu.
	anotherMenu := self anotherMenu.
	self deny: (business hasMenu: menu).
	business addMenu: menu.
	self assert: (business hasMenu: menu).
	business updateMenu: menu with: anotherMenu.
	self assert: menu equals: anotherMenu