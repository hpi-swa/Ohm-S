actions
Grammar: aNode with: grammarHeaderNode with: x with: rulesNode with: xx

	| aGrammar |

	aGrammar := super Grammar: aNode with: grammarHeaderNode with: x with: rulesNode with: xx.
	
	OhmCompiler installGrammar: aGrammar intoNamespace: self namespace namespaceName.
	
	^ aGrammar