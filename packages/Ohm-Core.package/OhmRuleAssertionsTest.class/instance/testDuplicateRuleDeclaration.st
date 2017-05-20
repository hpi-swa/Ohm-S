testing
testDuplicateRuleDeclaration

	| pexpr rule testGrammar |
	testGrammar := OhmCompiler 
						compileGrammarDefinition: 'G1 { }'.
	pexpr := OhmPExprAlt 
				newOn: { OhmPExprString newOn: 'foo' . OhmPExprString newOn: '1' }.
	rule := OhmRuleDefine newNamed: #digit body: pexpr.
	  
	self should: [ rule performChecksFor: testGrammar ] raise: OhmDuplicateRuleDeclarationError.