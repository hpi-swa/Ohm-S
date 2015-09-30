accessing
toRecipe 

	| operator |

	self min = 0
		ifTrue: [ operator := 'star' ]
		ifFalse: [ operator := 'plus' ].

	^ 'b ' , operator , ': (' , self term toRecipe , ')'