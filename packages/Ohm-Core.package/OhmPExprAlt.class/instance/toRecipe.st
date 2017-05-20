converting
toRecipe 

	^ 'b alt: {' , 
		((self terms collect: #toRecipe) joinSeparatedBy: ' . '), 
		'}'