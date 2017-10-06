matching
match: string startingFrom: startRuleName
	
	^ self matchStream: (OhmInputStream on: string) startingFrom: startRuleName failureAsException: true