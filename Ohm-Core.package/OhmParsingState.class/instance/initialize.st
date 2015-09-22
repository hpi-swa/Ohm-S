initialize-release
initialize

	self 
		inputs: OrderedCollection new;
		bindingsStack: OrderedCollection new;
		rightmostFailure: (OhmFailureDescriptor new);
		isSyntactic: false;
		shouldRecordFailures: false.