accessing
toRecipe 

	^ 'b extendRule:' , self ruleName printString , 'with: (' , self body toRecipe , ').'