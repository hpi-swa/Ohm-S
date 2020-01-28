evaluation
evaluation

	| result |
	self positionInfo enter: self ruleName.
	result := self evaluateBody.
	result == #ohmFail ifFalse: [
		(self positionInfo isCurrentLeftRecursion: self ruleName)
			ifTrue: [ "We arrived at the top and can now grow a seed."
					result := self handleLeftRecursion: result ]
			ifFalse: [ (self positionInfo isInvolvedRule: self ruleName)
						ifFalse: [ "Do not memoize if we are part of a left recursion."
								self memoizeResult: result ] ] ]
		ifTrue: [(self positionInfo isCurrentLeftRecursion: self ruleName)
			ifTrue: [self positionInfo endLeftRecursion]].

	self positionInfo leave: self ruleName.
	self state rightmostFailure: self beforeFailureDescriptor.
	self state recordFailures: self duringFailureDescriptor.

	^ result == #ohmFail
		ifTrue: [false]
		ifFalse: [ 
			bindings add: result.
			true]