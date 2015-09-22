change triggers
rule: oldRule modifiedTo: newRule in: grammar

	self trigger: (OhmModifiedRuleEvent oldRule: oldRule modifiedTo: newRule in: grammar)