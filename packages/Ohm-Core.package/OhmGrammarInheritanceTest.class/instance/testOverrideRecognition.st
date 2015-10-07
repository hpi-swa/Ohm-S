as yet unclassified
testOverrideRecognition

	| g1 g2 |
	g1 := self makeAndInstallGrammar: 'G1 { number = digit* }' in: 'inheritanceTestNameSpace1'.
	g2 := self makeAndInstallGrammar: 'G2 <: G1 { digit := /[a-z]/ }' in: 'inheritanceTestNameSpace1'.
	
	self should: (g1 match: '1234' startingFrom: #number) succeeded.
	self should: (g1 match: 'hello' startingFrom: #number) failed.
	self should: (g1 match: 'h3llo' startingFrom: #number) failed.
	
	self should: (g2 match: '1234' startingFrom: #number) failed.
	self should: (g2 match: 'hello' startingFrom: #number) succeeded.
	self should: (g2 match: 'h3llo' startingFrom: #number) failed.
