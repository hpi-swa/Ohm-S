testing
testExtend

	self makeAndInstallGrammar: 'G1 { foo = "aaa" "bbb" }' in: 'inheritanceTestNameSpace1'.
	self makeAndInstallGrammar: 'G2 <: inheritanceTestNameSpace1.G1 { foo += "111" "222" }' in: 'inheritanceTestNameSpace2'.

	self
		testOnGrammar: 'G3 <: G1 { bar += "bar" }' 
		in: 'inheritanceTestNameSpace1'
		throws: OhmUndeclaredRuleError
		andShould: [:e | self assert: e ruleName equals: 'bar'.
						self assert: e grammarName equals: 'G1'. ].

	