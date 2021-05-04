tests
testAttributesCanPreserveTheUnderscoreInlineMessageNames
	
	| g cst collector result |
	g := OhmGrammar new: 'G { 
			Start = RuleOne Rule
			RuleOne = "hello"
			Rule = 
				"world" -- one
				| "and others" -- two }'.

	collector := g synthesizedAttribute: OhmAttributeGenerationTestUnderscoreAttribute new.

	cst := g match: 'hello world' startingFrom: 'Start'.
	result := collector value: cst.
	
	self assert: (result includes: #Rule_one).