utility
isNameOfSyntacticRule: aRuleName

	^ aRuleName notEmpty and: [aRuleName asString first isUppercase].