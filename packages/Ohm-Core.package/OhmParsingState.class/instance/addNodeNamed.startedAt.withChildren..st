tree construction
addNodeNamed: name startedAt: start  withChildren: children

	self bindings add: (OhmNode newNamed: name forGrammar: self grammar andInput: self inputStream startedAt: start withChildren: children).