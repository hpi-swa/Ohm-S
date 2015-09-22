compiling
compileGrammarHeader: textualRepresentation

	| cst |

	cst := OhmGrammarOfOhm 
				matchContents: textualRepresentation 
				startingFrom: 'GrammarHeader' 
				failureAsException: true.
	
	^ (OhmGrammarOfOhm 
			semanticAction: OhmCompileGrammarHeader new) value: cst.