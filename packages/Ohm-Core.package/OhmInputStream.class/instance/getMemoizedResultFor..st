memoization
getMemoizedResultFor: ruleName

	^ (self positionInfo at: self contentStream position + 1)
				memoizedResultFor: ruleName 
				ifAbsent: [ ^ #ohmFail ]