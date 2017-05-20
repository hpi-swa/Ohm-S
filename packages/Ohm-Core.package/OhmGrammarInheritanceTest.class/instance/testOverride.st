as yet unclassified
testOverride

	self makeAndInstallGrammar: 'G1 { number = digit }' in: 'inheritanceTestNameSpace1'.
	self makeAndInstallGrammar: 'G2 <: G1 { digit := /[a-z]/ }' in: 'inheritanceTestNameSpace1'.

	self testOnGrammar:  'G3 <: G1 { foo := "foo" }' 
		in: 'inheritanceTestNameSpace1'
		throws: OhmUndeclaredRuleError 
		andShould: [ :e | self assert: e grammarName equals: 'G1'.
						 self assert: e ruleName equals: 'foo' ].