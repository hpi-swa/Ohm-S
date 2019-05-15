tests
testExtendRecognition

	| g1 g2 |
	g1 := self makeAndInstallGrammar: 'G1 { foo = "aaa" "bbb" }' in: 'inheritanceTestNameSpace1'.
   g2 := self makeAndInstallGrammar: 'G2 <: inheritanceTestNameSpace1.G1 { foo += "111" "222" }' in: 'inheritanceTestNameSpace2'.
	
	self assert: (g1 match: 'aaabbb' startingFrom: 'foo') succeeded.
	self should: (g1 match: '111222' startingFrom: 'foo') failed.
	
	self should: (g2 match: 'aaabbb' startingFrom: 'foo') succeeded.
	self should: (g2 match: '111222' startingFrom: 'foo') succeeded.