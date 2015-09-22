as yet unclassified
testGrammarParsesScaledDecimalLiteral
	{	{'2s' . 		#scaledDecimalLiteral } .
	 	{'2s' . 		#scaledDecimalLiteral } .
		{'-2s' .		#scaledDecimalLiteral } .
		{'2.2s' .		#scaledDecimalLiteral } .
		{'2.2s' .	#scaledDecimalLiteral } .
		{'-2.2s' .		#scaledDecimalLiteral } .
		{'2s10' .		#scaledDecimalLiteral } .
		{'2s10' .		#scaledDecimalLiteral } .
		{'-2s10' .		#scaledDecimalLiteral } .
		{'2s-10' .		#scaledDecimalLiteral } .
		{'2s10' .		#scaledDecimalLiteral } .
		{'2.2s10' .		#scaledDecimalLiteral } .
		{'-2.2s10' .	#scaledDecimalLiteral }}
		do: [ :t | |r|
			r := OhmSmalltalk matchContents: t first startingFrom: t second.
			self assert: r MatchedWithContent: t first andRuleName: t second.]
	