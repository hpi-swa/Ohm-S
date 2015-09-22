accessing
dispatchedBodyOn: aGrammar

	^ OhmPExprAlt newOn: { aGrammar superGrammar ruleNamed: self ruleName . self body }  