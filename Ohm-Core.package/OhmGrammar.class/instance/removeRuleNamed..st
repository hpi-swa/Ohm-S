accessing
removeRuleNamed: ruleName
	| rule |
	rule := self ruleDeclarations at: ruleName.
	rule inlineRules do: [:inlineRule | self removeRuleNamed: inlineRule ruleName].
	self ruleDeclarations removeKey: ruleName ifAbsent: [].
	self serializeToSmalltalkClass.
	OhmChangeNotifier uniqueInstance rule: rule removedFrom: self.