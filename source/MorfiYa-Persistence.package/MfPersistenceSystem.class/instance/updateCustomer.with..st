Customer-Query
updateCustomer: aCustomer with: anotherCustomer

	self glorpSession
		inUnitOfWorkDo: [ aCustomer synchronizeWith: anotherCustomer.
			self glorpSession register: aCustomer ]