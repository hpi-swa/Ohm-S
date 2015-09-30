actions
Grammar: aNode with: grammarHeaderNode with: x with: rulesNode with: xx

	| aGrammar rules |

	aGrammar := (self grammar semanticAction: (OhmCompileGrammarHeader newIn: namespace)) value: grammarHeaderNode.
	
	rules := ((self grammar semanticAction: OhmCompileRuleAttribute new) value: rulesNode) gather: [:id | id].
	rules ifNotEmpty: [ aGrammar defaultStartRuleName: rules first name asSymbol ].
	OhmCompiler installRules: rules into: aGrammar.
	
	^ aGrammar