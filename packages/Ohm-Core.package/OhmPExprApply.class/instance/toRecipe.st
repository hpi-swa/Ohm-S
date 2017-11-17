converting
toRecipe 

	^ 'b apply: ' , self ruleName asSymbol printString , ' with: {' , 
		(((self arguments ifNil: [#()]) collect: [:a | a toRecipe]) joinSeparatedBy: ' . ')  , '}'