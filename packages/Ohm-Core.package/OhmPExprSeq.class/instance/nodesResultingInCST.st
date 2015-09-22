accessing
nodesResultingInCST

	^ self terms select: [:t | t arity > 0]