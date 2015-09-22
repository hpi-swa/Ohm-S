instance creation
newForRule: ruleName withInvolvedRules: involvedRules 

	^ (self new)
		ruleName: ruleName;
		involvedRules: involvedRules;
		yourself