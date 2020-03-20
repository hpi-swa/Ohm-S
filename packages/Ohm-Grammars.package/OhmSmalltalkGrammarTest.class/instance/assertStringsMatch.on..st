asserting
assertStringsMatch: inputStrings on: ruleName
	
	inputStrings do: [:input | |r|
		r := OhmSmalltalk match: input startingFrom: ruleName.
		self assert: r MatchedWithContent: input andRuleName: ruleName]