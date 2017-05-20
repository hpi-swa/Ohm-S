signaling
signalFor: state startedFrom: startRuleName

	self
		startRuleName: startRuleName;
		state: state.
	super signal.