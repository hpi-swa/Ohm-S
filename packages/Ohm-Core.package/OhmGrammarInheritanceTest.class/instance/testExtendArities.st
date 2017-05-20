as yet unclassified
testExtendArities

	self makeAndInstallGrammar: 'M1 { foo = "foo" }' in: 'inheritanceTestNameSpace1'.
     
	self testOnGrammar:  'M2 <: M1 { foo += bar baz }' 
		in: 'inheritanceTestNameSpace1'
		throws: OhmRefinementMustBeCompatibleError 
		andShould: [ :e | self assert: e why equals: 'extending'.
						 self assert: e ruleName equals: 'foo' ].

	OhmGrammar makeAndInstallGrammar: 'M3 { foo = digit digit }' in: 'inheritanceTestNameSpace1'.
	self testOnGrammar:  'M4 <: M3 { foo += digit }' 
		in: 'inheritanceTestNameSpace1'
		throws: OhmRefinementMustBeCompatibleError 
		andShould: [ :e | self assert: e why equals: 'extending'.
						 self assert: e ruleName equals: 'foo' ].