change triggers
grammar: oldGrammar modifiedTo: newGrammar

	self trigger: (OhmModifiedGrammarEvent oldGrammar: oldGrammar modifiedTo: newGrammar)