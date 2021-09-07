evaluation
evaluateBody
	
	| tmpBindings result origPos newState |
	tmpBindings := OrderedCollection new.
	((self isSyntactic: self ruleName) or: [state isSyntactic])
		ifTrue: [self grammar skipSpaces: state].
	origPos := self input getState.
	self beforeFailureDescriptor: self state rightmostFailure.
	self duringFailureDescriptor: OhmFailureDescriptor new.

	newState := OhmParsingState new
				pushInput: self input;
				grammar: grammar;
				isSyntactic: (self isSyntactic: self ruleName);
				pushBindings: tmpBindings;
				shouldRecordFailures: self shouldRecordFailures;
				rightmostFailure: self duringFailureDescriptor;
				idOfParseProcess: self state idOfParseProcess.
	result := self ruleBody eval: newState.

	^ result 
		ifTrue: [OhmNode 
					newNamed: self ruleName 
					forGrammar: self grammar 
					andInput: self input 
					startedAt: origPos 
					withChildren: tmpBindings]
		ifFalse: [ #ohmFail ]
		