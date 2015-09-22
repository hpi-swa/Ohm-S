as yet unclassified
testExtendRecognition

	| g1 g2 |
	g1 := self makeAndInstallGrammar: 'G1 { foo = ''aaa'' ''bbb'' }' in: 'inheritanceTestNameSpace1'.
   g2 := self makeAndInstallGrammar: 'G2 <: inheritanceTestNameSpace1.G1 { foo += ''111'' ''222'' }' in: 'inheritanceTestNameSpace2'.
	
	self assert: ((g1 matchContents: 'aaabbb' startingFrom: 'foo') = false) not.
	self should: (g1 matchContents: '111222' startingFrom: 'foo') not.
	
	self should: ((g2 matchContents: 'aaabbb' startingFrom: 'foo') = false) not.
	self should: ((g2 matchContents: '111222' startingFrom: 'foo') = false) not.