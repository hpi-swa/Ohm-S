checking
checkForSameArityIn: aGrammar

	| expectedArity |
	expectedArity := (aGrammar superGrammar ruleNamed: self ruleName) arity.
	self body arity ~~ expectedArity ifTrue: [ 
		OhmRefinementMustBeCompatibleError 
			signalForRule: self ruleName 
			expectedArity: expectedArity 
			reason: 'extending' ]