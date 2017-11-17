checking
performChecksFor: aGrammar

	self body assertChoicesHaveUniformArity: self ruleName.
	
	self parameters asSet size = self parameters size
		ifFalse: [OhmDuplicateParameterName 
					signalForRule: self
					inGrammar: aGrammar ].