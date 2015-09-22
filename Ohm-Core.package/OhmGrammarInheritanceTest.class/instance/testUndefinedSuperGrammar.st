as yet unclassified
testUndefinedSuperGrammar

	self testOnGrammar:  'G1 <: G2 {}' 
		in: 'inheritanceTestNameSpace1'
		throws: OhmUndeclaredGrammarError 
		andShould: [ :e | self assert: e grammarName equals: 'G2'.
						 self assert: e namespaceName equals: 'inheritanceTestNameSpace1' ].

	self testOnGrammar:  'G1 <: G2 {}' 
		in: nil
		throws: OhmUndeclaredGrammarError 
		andShould: [ :e | self assert: e grammarName equals: 'G2'.
						 self assert: e namespaceName equals: 'Ohm-Grammars' ].