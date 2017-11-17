accessing
toRecipe 

	^ 'b extendRule:' , self ruleName printString , 'with: (' , self body toRecipe , 
		') withParameters: {'
		, ((self parameters collect: [:p | p asSymbol printString])
			joinSeparatedBy: ' . ')
		,'}.'