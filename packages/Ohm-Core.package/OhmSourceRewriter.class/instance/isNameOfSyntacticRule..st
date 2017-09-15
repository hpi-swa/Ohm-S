utility
isNameOfSyntacticRule: aRuleName

	^ aRuleName size > 0
		and: [aRuleName asString first isUppercase].