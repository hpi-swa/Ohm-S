testing
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
			r := OhmSmalltalk match: input startingFrom: t second.
			self assert: r cst MatchedWithContent: input andRuleName: t second.]