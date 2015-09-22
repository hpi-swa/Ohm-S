as yet unclassified
newFor: ruleName on: state

	^ (self new)
		ruleName: ruleName;
		input: state inputStream;
		grammar: state grammar;
		bindings: state bindings;
		shouldRecordFailures: state shouldRecordFailures;
		state: state;
		yourself