as yet unclassified
assertStringsMatch: inputStrings on: ruleName
	
	inputStrings
		do: [ :input | |r|
			r := OhmSmalltalk matchContents: input
									startingFrom: ruleName.
			self assert: r MatchedWithContent: input andRuleName: ruleName]