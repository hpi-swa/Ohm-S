as yet unclassified
testGrammarParsesStringLiterals

	{	{'asfd' . 	#stringLiteral } .
		{'' . 			#stringLiteral } .
		{'''' . 		#stringLiteral } .
		{'a b c ' .	#stringLiteral } .
		{'a # 12 ' .	#stringLiteral } }
		do: [ :t | |r input|
			input := t first printString.
			r := OhmSmalltalk matchContents: input
									startingFrom: t second.
			self assert: r MatchedWithContent: input andRuleName: t second.]