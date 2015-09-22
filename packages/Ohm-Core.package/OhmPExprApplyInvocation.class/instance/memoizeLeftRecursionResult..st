memoization
memoizeLeftRecursionResult: result
	
	self input 
		memoizeLeftRecursionResult: result
		hasMatched: true
		at: self originalPosition 
		for: self ruleName
		withFailures: self duringFailureDescriptor.