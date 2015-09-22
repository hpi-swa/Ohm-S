accessing
assertChoicesHaveUniformArity: ruleName

	| index |
	index := self terms findFirst: [ :t | t arity ~= self terms first arity ].
	
	index > 0
		ifTrue: [ OhmInconsistentArityError 
					signalForRule: ruleName 
					expectedArity: self terms first arity
					actualArity: (self terms at: index) arity   ]