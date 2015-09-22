as yet unclassified
testDefineCannotOverride
	
	self
		testOnGrammar: 'G1 { foo = ''foo'' }
						G2 <: G1 { foo = ''bar'' }' 
		in: 'inheritanceTestNameSpace1'
		throws: OhmDuplicateRuleDeclarationError
		andShould: [ :e | self assert: e ruleName equals: 'foo'.
				 self assert: e grammarName equals: 'G1'].