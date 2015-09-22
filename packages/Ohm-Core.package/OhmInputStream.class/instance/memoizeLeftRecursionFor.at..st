memoization
memoizeLeftRecursionFor: ruleName at: position

	(self positionInfo at: position + 1)
		forRule: ruleName
		memoizeResult: (OhmInputMemoizedLeftRecursion new)