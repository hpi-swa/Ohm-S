memoization
memoizeResult: result hasMatched: hasMatched
		
	self input 
		memoizeResult: result 
		hasMatched: hasMatched
		at: self originalPosition 
		for: self ruleName
		withFailures: self duringFailureDescriptor