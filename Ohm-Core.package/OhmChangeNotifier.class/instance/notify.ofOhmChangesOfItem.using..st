notification-registering
notify: anObject ofOhmChangesOfItem: itemKind  using: oneArgumentSelector 
	"Notifies an object of query changes of the specified itemKind (#class, #method, #protocol, ...). Evaluate 'AbstractEvent allItemKinds' to get the complete list."

	self 
		notify: anObject
		ofEvents: (self ohmEventsForItem: itemKind)
		using: oneArgumentSelector