converting
rulesToRecipe 

	^ self ruleDeclarations inject: '' into: [:recipe :rule | recipe , Character cr , rule toRecipe ]