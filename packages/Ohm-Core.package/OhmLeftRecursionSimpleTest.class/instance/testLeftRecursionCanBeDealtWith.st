tests
testLeftRecursionCanBeDealtWith

	"M { number = numberRec | digit 
             numberRec = number digit }"
	
	self 
		assertGrammar: self fixtureGrammar
		startingFrom: #number
		compliesWithFixture: #matchContents
		fromFixtureSet: #leftRecursionSimple.
	