converting
toRecipe

	^ '
[ | b |
b := OhmGrammarBuilder new.
b setGrammarName: ' , self grammarName printString , '.' , Character cr ,
self rulesToRecipe , Character cr ,
'b buildGrammar]'
	