tests
testLeftRecursionWhichWasWrongAtTheSamePositionEarlier
	"This test checks whether a left recursion which was applied at a
	position earlier in a branch which was rejected later on, and is 
	then re-applied at the same position later on works."

	self 
		assertGrammar: (OhmGrammar new: (OhmParsingExpressionFixtures fixturesFor: #leftRecursionFailedPreviously) grammar)
		startingFrom: #Exp
		compliesWithFixture: #matchContents
		fromFixtureSet: #leftRecursionFailedPreviously.
	