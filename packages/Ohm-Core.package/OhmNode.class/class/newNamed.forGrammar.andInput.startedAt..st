instance creation
newNamed: name forGrammar: aGrammar andInput: anInputStream startedAt: start

	^ (self new)
		ruleName: name;
		grammar: aGrammar;
		interval: (anInputStream currentIntervalFrom: start);
		yourself