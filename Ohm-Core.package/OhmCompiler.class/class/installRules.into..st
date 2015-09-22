installing
installRules: rules into: aGrammar

	| previousRule |
	rules do: [ :rule | 
		rule
			performChecksFor: aGrammar;
			boundGrammar: aGrammar.

		previousRule := aGrammar ruleDeclarations at: rule ruleName ifAbsent: [nil].
		aGrammar ruleDeclarations at: rule ruleName put: rule.
		
		previousRule
			ifNotNil: [ self removeOrphanRulesOf: previousRule in: aGrammar.
				        OhmChangeNotifier uniqueInstance 
						rule: previousRule modifiedTo: rule in: aGrammar.]
			ifNil: [OhmChangeNotifier uniqueInstance 
					rule: rule addedTo: aGrammar]]