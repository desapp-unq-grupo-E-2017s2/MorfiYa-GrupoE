Customer-Query
addCustomer: aCustomer

	self glorpSession inUnitOfWorkDo: [ self glorpSession register: aCustomer ]