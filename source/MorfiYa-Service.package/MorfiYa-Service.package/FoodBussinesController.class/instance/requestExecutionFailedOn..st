adding
requestExecutionFailedOn: error

	^ TeaResponse badRequest
		body: error messageText;
		headers: self normalHeaders;
		yourself