accessing
performChecksFor: aGrammar
 
	(aGrammar superGrammar rules keys includes: self ruleName)
		ifTrue: [ OhmDuplicateRuleDeclarationError signalForRule: self ruleName inGrammar: aGrammar superGrammar grammarName ].

	super performChecksFor: aGrammar.
