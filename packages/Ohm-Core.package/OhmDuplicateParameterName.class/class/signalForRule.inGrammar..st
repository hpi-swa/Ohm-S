signaling
signalForRule: aRule inGrammar: aGrammar

	^ self new
		rule: aRule;
		grammar: aGrammar;
		signal