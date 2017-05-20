accessing
toRecipe 

	^ 'b addInlineRule:' , self ruleName printString , 'as: (' , self body toRecipe , ').'