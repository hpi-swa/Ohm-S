notification-registering
notify: anObject ofAllOhmChangesUsing: oneArgumentSelector 
	"Notifies an object of any query changes."

	self 
		notify: anObject
		ofEvents: self allQueryEvents
		using: oneArgumentSelector