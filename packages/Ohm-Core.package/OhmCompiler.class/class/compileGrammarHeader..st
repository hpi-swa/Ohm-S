compiling
compileGrammarHeader: textualRepresentation

	| cst |

	cst := OhmGrammarOfOhm 
				match: textualRepresentation 
				startingFrom: 'GrammarHeader'.
	
	^ (OhmGrammarOfOhm 
			semanticAction: OhmCompileGrammarHeader new) value: cst.