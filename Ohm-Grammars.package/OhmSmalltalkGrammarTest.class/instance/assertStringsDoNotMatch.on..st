as yet unclassified
assertStringsDoNotMatch: inputStrings on: ruleName
	
	inputStrings
		do: [ :input | |r|
			r := OhmSmalltalk matchContents: input
									startingFrom: ruleName.
			self assert: false equals: r]