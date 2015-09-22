memoization
memoizedResultFor: ruleName ifAbsent: aBlock

	| memo |
	memo := self memoizedResults
		at: ruleName
		ifAbsent: [ ^ aBlock value ].

	"We do not allow a memoized result which was created by a left recursion (otherwise involvedRules is empty)
       and of which any of the then involved rules is active right now. Because this means that there is another
	 dive going on which did not start from the head which produced this memoized result."
	(memo involvedRules anySatisfy: [ :rule |
		self activeRules includes: rule ])
		ifTrue: [ ^ #ohmFail ]
		ifFalse: [ ^ memo ]
