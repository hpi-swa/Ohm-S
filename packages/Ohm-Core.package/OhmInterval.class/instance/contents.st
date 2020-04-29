accessing
contents

	(self end > self stream size or: [self end = 0])
		ifTrue: [^ ''].
	^ self stream contents copyFrom: self start to: self end