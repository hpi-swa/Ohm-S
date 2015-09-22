as yet unclassified
testOverrideRecognition

	| g1 g2 |
	g1 := self makeAndInstallGrammar: 'G1 { number = digit* }' in: 'inheritanceTestNameSpace1'.
	g2 := self makeAndInstallGrammar: 'G2 <: G1 { digit := /[a-z]/ }' in: 'inheritanceTestNameSpace1'.
	
	self shouldnt: (g1 matchContents: '1234' startingFrom: 'number') = false.
	self should: (g1 matchContents: 'hello' startingFrom: 'number') not.
	self should: (g1 matchContents: 'h3llo' startingFrom: 'number') not.
	
	self should: (g2 matchContents: '1234' startingFrom: 'number') not.
	self shouldnt: (g2 matchContents: 'hello' startingFrom: 'number') = false.
	self should: (g2 matchContents: 'h3llo' startingFrom: 'number') not.