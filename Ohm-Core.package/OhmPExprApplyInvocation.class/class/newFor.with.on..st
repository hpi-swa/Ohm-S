as yet unclassified
newFor: ruleName with: ruleBody on: state

	^ (self new)
		ruleName: ruleName;
		input: state inputStream;
		grammar: state grammar;
		bindings: state bindings;
		ruleBody: ruleBody;
		shouldRecordFailures: state shouldRecordFailures;
		state: state;
		yourself