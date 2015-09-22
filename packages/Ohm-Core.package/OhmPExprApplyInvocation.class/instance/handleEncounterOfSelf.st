leftRecursion
handleEncounterOfSelf

	 (self positionInfo isCurrentLeftRecursion: self ruleName)
		ifTrue: [ | memo |	
				memo := self positionInfo memoizedResultFor: self ruleName.
				^ memo hasMatched ]
		ifFalse: [ self positionInfo startLeftRecursion: self ruleName.
				 self memoizeLeftRecursion.
				^ false ]