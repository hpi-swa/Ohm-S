as yet unclassified
toRecipe 

	^ 'b alt: {' , 
		((self terms collect: #toRecipe) joinSeparatedBy: ' . '), 
		'}'