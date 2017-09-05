Customer-Query
removeCustomer: aCustomer
	self glorpSession inUnitOfWorkDo: [ self glorpSession delete: aCustomer ]