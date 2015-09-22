accessing
contents

	(self end > self stream contentStream size or: [self end = 0])
		ifTrue: [^ ''].
	^ self stream contentsFrom: self start to: self end