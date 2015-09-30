as yet unclassified
toRecipe 

	^ 'b seq: {' , 
		((self terms collect: #toRecipe) joinSeparatedBy: ' . '), 
		'}'