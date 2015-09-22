change triggers
rule: rule addedTo: grammar

	self trigger: (OhmAddedRuleEvent addedRule: rule grammarAddedTo: grammar)