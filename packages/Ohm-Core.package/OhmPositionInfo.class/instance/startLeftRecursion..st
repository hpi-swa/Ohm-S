left-recursion-support
startLeftRecursion: ruleName 

	| involvedRules |
	
	involvedRules := self determineRulesInvolvedInLeftRecursion: ruleName.
	self leftRecursionStack push: (OhmLeftRecursion newForRule: ruleName withInvolvedRules: involvedRules).
