Customer-Query
updateCustomer: aCustomer with: anotherCustomer
	self glorpSession
		inUnitOfWorkDo: [ aCustomer synchronizeWIth: anotherCustomer.
			self glorpSession register: aCustomer ]