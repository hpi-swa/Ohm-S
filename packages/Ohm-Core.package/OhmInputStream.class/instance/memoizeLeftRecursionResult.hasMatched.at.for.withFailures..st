memoization
memoizeLeftRecursionResult: bindings hasMatched: hasMatched at: position for: ruleName withFailures: failureDescriptor

	| memo aPositionInfo |
	aPositionInfo := self positionInfo at: position + 1.
	memo := OhmInputMemoizedResult 
				newWithResult: bindings
				andFailures: failureDescriptor
				hasMatched: hasMatched
				andInvolvedRules: aPositionInfo currentLeftRecursion involvedRules
				on: self getState.

	aPositionInfo
		forRule: ruleName
		memoizeResult: memo