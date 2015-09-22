instance creation
newWithResult: result andFailures: failures hasMatched: hasMatched andInvolvedRules: involvedRules on: position 
	
	^ (self
		newWithResult: result
		andFailures: failures
		hasMatched: hasMatched
		on: position)
			involvedRules: involvedRules;
		 	yourself
