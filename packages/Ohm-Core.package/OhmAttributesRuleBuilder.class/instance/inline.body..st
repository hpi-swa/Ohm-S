rule finalization
inline: ruleName body: b

	self resultRules add: (OhmRuleInline 
			newNamed: ruleName 
			body: b
			textualRepresentation: self textualRepresentation).

	^ self apply: ruleName