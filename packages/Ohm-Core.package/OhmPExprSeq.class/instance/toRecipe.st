converting
toRecipe 

	^ 'b seq: {' , 
		((self terms collect: #toRecipe) joinSeparatedBy: ' . '), 
		'}'