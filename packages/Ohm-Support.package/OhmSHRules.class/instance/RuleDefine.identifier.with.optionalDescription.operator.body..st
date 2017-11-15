actions
RuleDefine: aNode identifier: anId with: formals optionalDescription: description operator: anOperator body: ruleBody

	| ranges |
	ranges := (self value: ruleBody) asOrderedCollection.
	ranges  
		addAll: { self rangeFrom: anId type: #patternUnary.
				 self rangeFrom: anOperator type: #binary. };
		addAll: (self value: description).
	^ ranges