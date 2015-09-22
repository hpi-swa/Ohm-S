private
allQueryEvents 

	^ { OhmAddedRuleEvent  .
		OhmModifiedRuleEvent .
		OhmModifiedGrammarEvent .
		OhmRemovedRuleEvent }
			gather: [:e | e itemChangeCombinations]