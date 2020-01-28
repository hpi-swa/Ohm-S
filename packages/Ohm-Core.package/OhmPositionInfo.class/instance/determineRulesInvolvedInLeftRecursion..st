left-recursion-support
determineRulesInvolvedInLeftRecursion: ruleName

	| result |
	result := OrderedCollection new.
	self activeRules do: [ :rule |
		rule = ruleName
			ifTrue: [ ^result]
			ifFalse: [result add: rule.]].
	^ result