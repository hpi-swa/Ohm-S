matching
matchContents: string startingFrom: startRuleName failureAsException: exceptionOnFailure
	
	^ self matchStream: (OhmInputStream on: string) startingFrom: startRuleName failureAsException: exceptionOnFailure