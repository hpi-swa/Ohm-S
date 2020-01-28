evaluation
result

	| memo |
	
	self originalPosition: self input getState.
	self positionInfo: (self input currentPositionInfo).

	memo := self tryToUseMemoizedResult.
	memo == #ohmFail
		ifFalse: [^ memo hasMatched].
	
	^ (self positionInfo activeRules includes: self ruleName)
		ifTrue: [self handleEncounterOfSelf]
		ifFalse: [self evaluation]