left-recursion-support
isCurrentLeftRecursion: ruleName

	^ self leftRecursionStack isEmpty not and: [
		self leftRecursionStack top ruleName = ruleName]