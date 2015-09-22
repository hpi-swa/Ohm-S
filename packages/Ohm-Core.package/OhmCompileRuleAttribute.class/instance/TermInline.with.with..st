actions
TermInline: node with: expr with: name

	| inlineRuleName inlineRuleBody |
	inlineRuleName := self class inlineRuleNameFor: (self value: name) in: self currentRule.
	inlineRuleBody := (self value: expr).
	inlineRuleBody textualRepresentation: node interval contents. 
	^ self builder inline: inlineRuleName body: inlineRuleBody