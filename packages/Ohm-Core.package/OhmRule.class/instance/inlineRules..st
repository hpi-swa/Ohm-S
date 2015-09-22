accessing
inlineRules: rules

	rules do: [:r | 
		self assert: r isInlineRule.
		r enclosingRule: self].
	inlineRules := rules