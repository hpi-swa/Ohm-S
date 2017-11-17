accessing
ruleDeclarationNamed: ruleName lookUpFor: startGrammar

	^ self ruleDeclarationNamed: ruleName ifAbsent: [ 
		(self superGrammar ~= self)
			ifTrue: [ ^ self superGrammar 
						ruleDeclarationNamed: ruleName lookUpFor: startGrammar ]
			ifFalse: [OhmUndeclaredRuleError 
						signalForRule: ruleName 
						inGrammar: startGrammar grammarName ]]