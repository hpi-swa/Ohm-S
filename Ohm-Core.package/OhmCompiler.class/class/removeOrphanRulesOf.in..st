installing
removeOrphanRulesOf: previousRule in: aGrammar

	aGrammar rules keysAndValuesRemove: [:k :v | previousRule inlineRules includes: v]