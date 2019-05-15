tests
testGrammarParsesSymbolArrayLiterals
	
	| ruleName |
	ruleName := #LiteralArrayLiteral.
	
	{	{'#(1.2)' 		. {#floatingPointLiteral =>'1.2' }  } . 	
		{'#(a)' 			. {#symbolInArrayLiteral =>  'a' }} . 
		{'#(a b)' 		. {#symbolInArrayLiteral => 'a' . #symbolInArrayLiteral => 'b' } } . 
        	{'#(2a)'  		. {#integerLiteral => '2'. #symbolInArrayLiteral =>'a' }  } .
		{'#(+1.2)' 		. {#symbolInArrayLiteral => '+' .#floatingPointLiteral =>'1.2' } } . 
		{'#(false)' 		. {#constantReference => 'false'} } .
		{'#(''asdf'')' 	. {#stringLiteral => '''asdf'''  }  } .
		{'#($a)' 		. {#characterLiteral => '$a'  }  } .
		{'#(#a #b)' 		. {#symbolLiteral => '#a' . #symbolLiteral => '#b'} } }
		do: [ :t | |input r| input := t first.
			r := (OhmSmalltalk match: input startingFrom: ruleName) cst.
			self assert: false ~= r.
			self assert: t second size equals: r children second children size.

			(r children at: 2) children withIndexDo: [:c :index | |gold|
				gold := t second at: index .
				self assert: c children first MatchedWithContent: gold value andRuleName: gold key]].