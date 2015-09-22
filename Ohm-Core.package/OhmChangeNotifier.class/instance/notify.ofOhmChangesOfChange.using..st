notification-registering
notify: anObject ofOhmChangesOfChange: changeKind using: oneArgumentSelector 
	"Notifies an object of query changes of the specified changeKind (#added, #removed, ...). Evaluate 'AbstractEvent allChangeKinds' to get the complete list."

	self 
		notify: anObject
		ofEvents: (self  ohmEventsForChange: changeKind)
		using: oneArgumentSelector