treeNavigation
rootNode

	^ self parent 
		ifNil: [self]
		ifNotNil: [self parent rootNode]