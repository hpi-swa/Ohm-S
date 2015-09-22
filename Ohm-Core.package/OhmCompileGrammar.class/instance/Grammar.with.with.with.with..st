actions
Grammar: aNode with: grammarHeaderNode with: x with: rulesNode with: xx

	| aGrammar rules |

	aGrammar := (self grammar semanticAction: (OhmCompileGrammarHeader newIn: namespace)) value: grammarHeaderNode.
	
	rules := ((self grammar semanticAction: OhmCompileRuleAttribute new) value: rulesNode) gather: [:id | id].
	
	OhmCompiler installRules: rules into: aGrammar.
	
	^ aGrammar