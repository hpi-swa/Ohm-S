accessing
toRecipe 

	^ 'b addRule:' , self ruleName printString , 'as: (' , self body toRecipe , ').'