left-recursion-support
isInvolvedRule: ruleName

	^ self leftRecursionStack isEmpty not 
		and: [self leftRecursionStack top isInvolvedRule: ruleName]