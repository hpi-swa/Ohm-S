matching
doesMatch: string startingFrom: startRuleName
	
	| state |
	state := OhmParsingState new.
	state
		grammar: self;
		pushInput: (OhmInputStream on: string);
		isSyntactic: false;
		pushBindings: OrderedCollection new;
		shouldRecordFailures: false.      

	^ (OhmPExprSeq newOn: { OhmPExprApply newOn: startRuleName . 
								  OhmPExprMany newStarOn: (self ruleNamed: #space) .
								  OhmPExprEnd new} )
			eval: state