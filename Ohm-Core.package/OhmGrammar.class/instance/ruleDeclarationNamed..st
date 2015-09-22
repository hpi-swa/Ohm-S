accessing
ruleDeclarationNamed: ruleName

	^ self ruleDeclarationNamed: ruleName 
		ifAbsent: [ (self superGrammar ~= self)
						ifTrue: [ ^ self superGrammar 
							ruleDeclarationNamed: ruleName lookUpFor: self ]
						ifFalse: [OhmUndeclaredRuleError 
									signalForRule: ruleName 
									inGrammar: self grammarName]]