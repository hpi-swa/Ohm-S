instance creation
newWithName: name ruleDictionary: rulesDictionary

	| newGrammar |
	newGrammar := (self new)
						grammarName: name;
						yourself.
						
	newGrammar ruleDeclarations: 
		(Dictionary newFrom: (rulesDictionary associations 
			collect: [:assoc | assoc key -> (OhmRuleDefine newNamed: assoc key body: assoc value) ])).
	^ newGrammar