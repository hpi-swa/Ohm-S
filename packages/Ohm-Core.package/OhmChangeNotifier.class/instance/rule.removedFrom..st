change triggers
rule: rule removedFrom: grammar

	self trigger:
		(OhmRemovedRuleEvent 
			removedRule: rule from: grammar)