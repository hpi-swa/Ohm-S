as yet unclassified
testFromAnAliveOhmToABoostrapOhm

	| cookedGrammar cst bakedGrammar |
	cookedGrammar := (Compiler evaluate: OhmGrammarOfOhm toRecipe) value .

	cst := cookedGrammar 
		matchContents: OhmGrammarOfOhm ohmGrammarDefinition 		startingFrom: #Grammar.
	self shouldnt: cst = false.

	bakedGrammar := (cookedGrammar semanticAction: OhmCompileGrammar new)
		value: cst.