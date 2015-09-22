left-recursion-support
determineRulesInvolvedInLeftRecursion: ruleName

	| result |
	result := Set new.

	self activeRules do: [ :rule |
		rule = ruleName
			ifTrue: [ ^result]
			ifFalse: [result add: rule.]].

	^ result