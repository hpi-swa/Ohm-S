memoization
memoizeResult: bindings hasMatched: hasMatched at: position for: ruleName withFailures: failureDescriptor

	(self positionInfo at: position + 1)
		forRule: ruleName
		memoizeResult: (OhmInputMemoizedResult 
							newWithResult: bindings
							andFailures: failureDescriptor
							hasMatched: hasMatched 
							on: self getState)