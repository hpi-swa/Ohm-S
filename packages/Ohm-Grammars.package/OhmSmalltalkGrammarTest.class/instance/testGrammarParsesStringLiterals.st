testing
testGrammarParsesStringLiterals

	{	{'asfd' . 	#stringLiteral } .
		{'' . 			#stringLiteral } .
		{'''' . 		#stringLiteral } .
		{'a b c ' .	#stringLiteral } .
		{'a # 12 ' .	#stringLiteral } }
		do: [ :t | |r input|
			input := t first printString.
			r := OhmSmalltalk match: input
									startingFrom: t second.
			self assert: r cst MatchedWithContent: input andRuleName: t second.]