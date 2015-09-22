matching
match: element startingFrom: startRuleName failureAsException: exceptionOnFailure
	
	^ self matchStream: (OhmInputStream on: element) startingFrom: startRuleName failureAsException: exceptionOnFailure