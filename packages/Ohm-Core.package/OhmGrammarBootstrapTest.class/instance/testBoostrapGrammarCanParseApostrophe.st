as yet unclassified
testBoostrapGrammarCanParseApostrophe

	self assert: ((OhmGrammarOfOhm bootstrapOhmGrammar)
					doesMatch: 'G { foo = '''''' ''foo'' '''''' }' startingFrom: 'Grammars').

	self assert: ((OhmGrammarOfOhm bootstrapOhmGrammar)
					doesMatch: 'G { string  -- string literal
    										= '''''' sChar* '''''' }' startingFrom: 'Grammars').

	self assert: ((OhmGrammarOfOhm bootstrapOhmGrammar)
					doesMatch: 'G { sChar
								    = ''\'''' }' startingFrom: 'Grammars').