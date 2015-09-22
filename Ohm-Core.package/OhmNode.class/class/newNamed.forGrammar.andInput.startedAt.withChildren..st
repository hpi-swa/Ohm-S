instance creation
newNamed: name forGrammar: aGrammar andInput: anInputStream startedAt: start withChildren: children

	^ (self new)
		ruleName: name;
		grammar: aGrammar;
		interval: (anInputStream currentIntervalFrom: start);
		children: children;
		yourself