testing
testUndefinedSuperGrammar

	self testOnGrammar:  'G1 <: G2 {}' 
		in: 'inheritanceTestNameSpace1'
		throws: OhmUndeclaredGrammarError 
		andShould: [ :e | self assert: e grammarName equals: 'G2' ].

	self testOnGrammar:  'G1 <: G2 {}' 
		in: nil
		throws: OhmUndeclaredGrammarError 
		andShould: [ :e | self assert: e grammarName equals: 'G2' ].