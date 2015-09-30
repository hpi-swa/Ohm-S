actions
Rule: node with: expr

	| body |
	self builder: OhmAttributesRuleBuilder new.
	self builder textualRepresentation: node interval contents.
	body := self value: expr.

	^ self builder build 