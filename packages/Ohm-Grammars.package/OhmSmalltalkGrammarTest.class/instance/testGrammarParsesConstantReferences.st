as yet unclassified
testGrammarParsesConstantReferences
	{	{'true' . 		#constantReference } .
	 	{'false' . 	#constantReference } .
		{'nil' .		#constantReference } }
		do: [ :t | |r|
			r := OhmSmalltalk match: t first startingFrom: t second.
			self assert: r cst MatchedWithContent: t first andRuleName: t second.]
	