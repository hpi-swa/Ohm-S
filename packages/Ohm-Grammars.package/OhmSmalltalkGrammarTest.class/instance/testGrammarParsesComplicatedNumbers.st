tests
testGrammarParsesComplicatedNumbers

	startRule := #integerLiteral.
	{	{'1' . 			#integerLiteral } .
	 	{'1000' . 		#integerLiteral } .
		{'-1000' .		#integerLiteral }.
		{'2r11' .			#integerLiteral }.
		{'2r101' .		#integerLiteral }.
		{'2r-11' .		#integerLiteral }.
		{'-2r101' .		#integerLiteral } }
		do: [:conf | self shouldParse: conf first to: { conf second . conf first} ].

	{	{'3e2' .			#floatingPointLiteral }.
		{'2r0.1e-2'.		#floatingPointLiteral } }
		do: [ :t | |r|
			r := OhmSmalltalk match: t first startingFrom: t second.
			self assert: r cst MatchedWithContent: t first andRuleName: t second.]