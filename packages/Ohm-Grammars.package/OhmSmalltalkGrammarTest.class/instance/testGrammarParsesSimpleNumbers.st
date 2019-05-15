tests
testGrammarParsesSimpleNumbers

	{	{'1' . 		#integerLiteral } .
	 	{'1000' . 	#integerLiteral } .
		{'-1000' .	#integerLiteral }.
		{'-1' .		#integerLiteral }.
		{'1.0' .		#floatingPointLiteral }.
		{'1.12412'.	#floatingPointLiteral }.
		{'-1.0' .		#floatingPointLiteral }.
		{'-1.12412'.	#floatingPointLiteral } }
		do: [ :t | |r|
			r := OhmSmalltalk match: t first startingFrom: t second.
			self assert: r cst MatchedWithContent: t first andRuleName: t second.].

	{	{'1 2' . 		#integerLiteral } .
	 	{'1 2 3' . 	#integerLiteral } .
		{'- 1000' .	#integerLiteral }.
		{'- 1' .		#integerLiteral }.
		{'1. 0' .		#floatingPointLiteral }.
		{'1. 12412'.	#floatingPointLiteral }.
		{'- 1 .0' .	#floatingPointLiteral } }
		do: [ :t | |r|
			r := OhmSmalltalk match: t first startingFrom: t second.
			self assert: r failed.]