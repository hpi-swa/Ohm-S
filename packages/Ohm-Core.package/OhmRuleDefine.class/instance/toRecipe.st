accessing
toRecipe 

	^ 'b addRule:' , 
		self ruleName printString , 
		'as: (' , 
		self body toRecipe , 
		') withParameters: {'
		, ((self parameters collect: [:p | p asSymbol printString])
			joinSeparatedBy: ' . ')
		,'}.'