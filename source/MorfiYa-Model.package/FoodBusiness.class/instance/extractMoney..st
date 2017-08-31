Extracting
extractMoney: aMoneyAmount
	self assertCanExtract: aMoneyAmount.
	money := money - aMoneyAmount