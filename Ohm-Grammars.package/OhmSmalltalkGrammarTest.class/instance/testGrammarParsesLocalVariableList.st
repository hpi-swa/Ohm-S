as yet unclassified
testGrammarParsesLocalVariableList
	
	| ruleName |
	ruleName := #LocalVariableDeclarationList.
	{ '||' . '|a|' . {' | a | ' . ' | a |'} . '| ab bc |' . '|ab bc cd|' }
		do: [ :inputStringOrArray | |r input expected|
			(inputStringOrArray isKindOf: Array) 
				ifTrue: [ input := inputStringOrArray first.
						expected := inputStringOrArray second.]
				ifFalse: [ input := inputStringOrArray.
						expected := inputStringOrArray ].
			r := OhmSmalltalk matchContents: input
									startingFrom: ruleName.
			self assert: r MatchedWithContent: expected andRuleName: ruleName].

	{ '|' . '|2a|' . '|+a|'}
		do: [ :input | |r|
			r := OhmSmalltalk matchContents: input
									startingFrom: ruleName.
			self assert: false equals: r]