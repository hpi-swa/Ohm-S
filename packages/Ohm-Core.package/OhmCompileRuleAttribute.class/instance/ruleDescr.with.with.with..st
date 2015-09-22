actions
ruleDescr: node with: x with: description with: xx

	| descriptionValue |
	descriptionValue := self value: description.
	self builder setRuleDescription: descriptionValue.
	^ descriptionValue