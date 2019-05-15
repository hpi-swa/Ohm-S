tests
testExtendParameterArities

	self makeAndInstallGrammar: 'M1 { foo<A> = "foo" }' in: 'inheritanceTestNameSpace1'.
     
	self testOnGrammar:  'M2 <: M1 { foo<A> += bar }' 
		in: 'inheritanceTestNameSpace1'
		throwsNot: OhmIncompatibleNumberOfParameters.

	self testOnGrammar: 'M3 <: M1 { foo<A,B> += bar}'
		in: 'inheritanceTestNameSpace1'
		throws: OhmIncompatibleNumberOfParameters
		andShould: [:e | ]