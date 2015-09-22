as yet unclassified
testGrammarParsesConstantReferences
	{	{'true' . 		#constantReference } .
	 	{'false' . 	#constantReference } .
		{'nil' .		#constantReference } }
		do: [ :t | |r|
			r := OhmSmalltalk matchContents: t first startingFrom: t second.
			self assert: r MatchedWithContent: t first andRuleName: t second.]
	