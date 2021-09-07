tests
testUndefinedSuperGrammar
	
	self testOnGrammar:  'G1 <: G2 {}' 
		in: 'inheritanceTestNameSpace1'
		throws: OhmUndeclaredGrammarError 
		andShould: [ :e | self assert: 'G2' equals: e grammarName  ].

	self testOnGrammar:  'G1 <: G2 {}' 
		in: nil
		throws: OhmUndeclaredGrammarError 
		andShould: [ :e | self assert: 'G2' equals: e grammarName ].