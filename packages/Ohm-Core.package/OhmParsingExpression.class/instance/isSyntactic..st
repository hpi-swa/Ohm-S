accessing
isSyntactic: ruleName

	^ ruleName size > 0
		and: [(ruleName asString at: 1) isUppercase]