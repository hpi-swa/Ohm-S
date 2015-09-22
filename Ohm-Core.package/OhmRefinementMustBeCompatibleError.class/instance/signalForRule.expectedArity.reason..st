as yet unclassified
signalForRule: ruleName expectedArity: arity reason: why
	
	self ruleName: ruleName.
	self expected: arity.
	self why: why.
	super signal.