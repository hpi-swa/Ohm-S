as yet unclassified
testGrammarParsesCharacterLiterals

	{	{'$a' . 	#characterLiteral } .
		{'$2' . 	#characterLiteral } .
		{'$_' . 	#characterLiteral } .
		{'$''' .	#characterLiteral } .
		{'$ ' .	#characterLiteral } .
		{'$$' .	#characterLiteral } .
		{'$', Character cr 
			.	#characterLiteral } }
		do: [ :t | |r input|
			input := t first.
			r := OhmSmalltalk matchContents: input
									startingFrom: t second.
			self assert: r MatchedWithContent: input andRuleName: t second.]