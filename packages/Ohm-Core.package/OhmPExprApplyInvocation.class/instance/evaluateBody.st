evaluation
evaluateBody

	| tmpBindings result origPos state |
	tmpBindings := OrderedCollection new.
	self state isSyntactic ifTrue: [self grammar skipSpaces: self state].
	origPos := self input getState.
	self beforeFailureDescriptor: self state rightmostFailure.
	self duringFailureDescriptor: OhmFailureDescriptor new.

	state := OhmParsingState new
				pushInput: self input;
				grammar: grammar;
				isSyntactic: (self isSyntactic: self ruleName);
				pushBindings: tmpBindings;
				shouldRecordFailures: self shouldRecordFailures;
				rightmostFailure: self duringFailureDescriptor;
				idOfParseProcess: self state idOfParseProcess.
	result := self ruleBody eval: state.

	^ result 
		ifTrue: [OhmNode 
					newNamed: self ruleName 
					forGrammar: self grammar 
					andInput: self input 
					startedAt: origPos 
					withChildren: tmpBindings]
		ifFalse: [ #ohmFail ]
		