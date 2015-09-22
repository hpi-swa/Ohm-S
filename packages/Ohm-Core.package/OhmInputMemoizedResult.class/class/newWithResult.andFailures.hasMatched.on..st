instance creation
newWithResult: result andFailures: failures hasMatched: hasMatched on: position

	^ (self new)
		node: result;
		failureDescriptor: failures;
		hasMatched: hasMatched;
		position: position;
		yourself