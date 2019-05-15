tests
testBindingsInconsistentAritiesInAlt

	self
		testOnGrammar: 'G { foo = "a" "c" | "b" }' in: 'inheritanceTestNameSpace1' 
		throws: OhmInconsistentArityError 
		andShould: [ :e | self assert: e ruleName equals: 'foo'.
						self assert: e expected equals: 2.
						self assert: e actual equals: 1.].


	self
		testOnGrammar: 'G { foo = ("a" "c" | "b") "d" }' in: 'inheritanceTestNameSpace1' 
		throws: OhmInconsistentArityError 
		andShould: [ :e | self assert: e ruleName equals: 'foo'.
						self assert: e expected equals: 2.
						self assert: e actual equals: 1.].

	"self
		testOnGrammar: 'G { foo = ~(""a"" ""c"" | ""b"") }' in: '' 
		throws: OhmInconsistentArityError 
		andShould: [ :e | self assert: e ruleName equals: 'foo'.
						self assert: e expected equals: 2.
						self assert: e actual equals: 1.]"